import 'dart:async';

import 'package:collection/collection.dart';
import 'package:fimber_io/fimber_io.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/model/fuel_consumption_over_time.dart';
import 'package:viam_marine/domain/data_viam/use_case/fetch_fuel_consumption_data_use_case.dart';
import 'package:viam_marine/domain/data_viam/use_case/subscribe_to_fuel_consumption_stream_use_case.dart';
import 'package:viam_marine/presentation/page/fuel_consumption_over_time/cubit/fuel_consumption_over_time_page_state.dart';
import 'package:viam_marine/utils/safety_cubit.dart';

@injectable
class FuelConsumptionOverTimePageCubit extends ViamCubit<FuelConsumptionOverTimePageState> {
  static const String _tag = 'FuelConsumptionOverTimePageCubit';

  final SubscribeToFuelConsumptionStreamUseCase _subscribeToFuelConsumptionStreamUseCase;
  final FetchFuelConsumptionDataUseCase _fetchFuelConsumptionDataUseCase;

  StreamSubscription<List<FuelConsumptionOverTime>>? _fuelConsumptionOverTimeStream;
  List<List<FuelConsumptionOverTime>> _fuelConsumptionOverTimeData = [];
  bool _isInit = true;
  int _currentIndex = 0;
  bool _isBackButtonDisabled = true;

  FuelConsumptionOverTimePageCubit(
    this._fetchFuelConsumptionDataUseCase,
    this._subscribeToFuelConsumptionStreamUseCase,
  ) : super(const FuelConsumptionOverTimePageState.idle());

  Future<void> init(
    String locationId,
    String robotName,
    String? fuelSensorName,
    String? movementSensorName,
  ) async {
    try {
      emit(const FuelConsumptionOverTimePageState.loading());

      _listenToFuelConsumptionOverTimeStream(fuelSensorName ?? '');
      await _fetchFuelConsumptionDataUseCase(
        locationId: locationId,
        robotName: robotName,
        fuelSensorName: fuelSensorName,
        movementSensorName: movementSensorName,
      );
    } catch (error, st) {
      emit(const FuelConsumptionOverTimePageState.error());
      Fimber.e('Error while $_tag init', ex: error, stacktrace: st);
    }
  }

  void onBackButtonPressed() {
    if (_currentIndex + 1 > _fuelConsumptionOverTimeData.length - 1) {
      return;
    }

    _currentIndex++;
    final List<FuelConsumptionOverTime> fuelConsumption =
        _fuelConsumptionOverTimeData[_currentIndex].reversed.toList(growable: false);
    final FuelConsumptionOverTime? yAxisMaxValue = _getMaxValue(fuelConsumption);

    _emitLoadedState(
      yAxisMaxValue: yAxisMaxValue,
      data: fuelConsumption,
      isBackButtonActive: _isBackButtonActive,
      isForwardButtonActive: _isForwadButtonActive,
    );
  }

  void onForwardButtonPressed() {
    if (_currentIndex - 1 < 0) {
      return;
    }

    _currentIndex--;
    final List<FuelConsumptionOverTime> fuelConsumption =
        _fuelConsumptionOverTimeData[_currentIndex].reversed.toList(growable: false);
    final FuelConsumptionOverTime? yAxisMaxValue = _getMaxValue(fuelConsumption);

    _emitLoadedState(
      yAxisMaxValue: yAxisMaxValue,
      data: fuelConsumption,
      isBackButtonActive: _isBackButtonActive,
      isForwardButtonActive: _isForwadButtonActive,
    );
  }

  void _fuelConsumptionOverTimeStreamListener(List<FuelConsumptionOverTime> fuelConsumption) {
    try {
      _fuelConsumptionOverTimeData = fuelConsumption.slices(10).toList(growable: false);

      final List<FuelConsumptionOverTime> fuelConsumptionOverTimeDataToDisplay =
          fuelConsumption.take(10).toList().reversed.toList();

      if (_isCurrentIndexFetching) {
        _handleCurrentIndexFetching(isBackButtonActive: false);
        return;
      } else if (_isCurrentIndexFetchingAndCanGoBack) {
        _handleCurrentIndexFetching(isBackButtonActive: true);
        return;
      }

      if (_isInitFetching) {
        _handleInitFetching(fuelConsumptionOverTimeDataToDisplay);
        return;
      }
    } catch (error, st) {
      emit(const FuelConsumptionOverTimePageState.error());
      Fimber.e('$_tag Error while fetching fuel consumption ', ex: error, stacktrace: st);
    }
  }

  void _handleCurrentIndexFetching({required bool isBackButtonActive}) {
    final List<FuelConsumptionOverTime> fuelConsumptionOverTimeDataToDisplay =
        _fuelConsumptionOverTimeData[_currentIndex].take(10).toList().reversed.toList();

    final yAxisMaxValue = _getMaxValue(fuelConsumptionOverTimeDataToDisplay);

    _emitLoadedState(
      yAxisMaxValue: yAxisMaxValue,
      data: fuelConsumptionOverTimeDataToDisplay,
      isBackButtonActive: isBackButtonActive,
      isForwardButtonActive: _isForwadButtonActive,
    );
  }

  void _handleInitFetching(List<FuelConsumptionOverTime> data) {
    _isInit = false;
    if (_fuelConsumptionOverTimeData.length > 1) {
      _isBackButtonDisabled = false;
    }

    final FuelConsumptionOverTime? yAxisMaxValue = _getMaxValue(data);

    _emitLoadedState(
        data: data,
        yAxisMaxValue: yAxisMaxValue,
        isBackButtonActive: _fuelConsumptionOverTimeData.length > 1,
        isForwardButtonActive: _isForwadButtonActive);
  }

  void _emitLoadedState({
    required FuelConsumptionOverTime? yAxisMaxValue,
    required List<FuelConsumptionOverTime> data,
    required bool isBackButtonActive,
    required bool isForwardButtonActive,
  }) {
    if (yAxisMaxValue != null && yAxisMaxValue.value == 0) {
      final double maxValue = yAxisMaxValue.value + 10;

      emit(FuelConsumptionOverTimePageState.loaded(
        data,
        maxValue,
        isBackButtonActive,
        isForwardButtonActive,
      ));
    } else {
      emit(FuelConsumptionOverTimePageState.loaded(
        data,
        yAxisMaxValue?.value ?? 10,
        isBackButtonActive,
        isForwardButtonActive,
      ));
    }
  }

  void _listenToFuelConsumptionOverTimeStream(String fuelSensorName) {
    _fuelConsumptionOverTimeStream?.cancel();
    _fuelConsumptionOverTimeStream = _subscribeToFuelConsumptionStreamUseCase(
      fuelSensorName: fuelSensorName,
    ).listen(_fuelConsumptionOverTimeStreamListener);
  }

  FuelConsumptionOverTime? _getMaxValue(List<FuelConsumptionOverTime> data) =>
      maxBy(data, (fuelOverTime) => fuelOverTime.value);

  bool get _isCurrentIndexFetchingAndCanGoBack =>
      _currentIndex < _fuelConsumptionOverTimeData.length - 1 && _fuelConsumptionOverTimeData.length >= 2 && !_isInit;

  bool get _isCurrentIndexFetching =>
      _currentIndex == _fuelConsumptionOverTimeData.length - 1 && _fuelConsumptionOverTimeData.length >= 2 && !_isInit;

  bool get _isInitFetching => (_fuelConsumptionOverTimeData.length < 2 || _isInit) || _isBackButtonDisabled;

  bool get _isForwadButtonActive => _currentIndex > 0;

  bool get _isBackButtonActive => _currentIndex + 1 <= _fuelConsumptionOverTimeData.length - 1;

  @override
  Future<void> close() async {
    await _fuelConsumptionOverTimeStream?.cancel();
    return super.close();
  }
}
