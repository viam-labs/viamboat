import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:fimber_io/fimber_io.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/model/filter_event.dart';
import 'package:viam_marine/domain/data_viam/model/fuel_consumption_over_time.dart';
import 'package:viam_marine/domain/data_viam/use_case/fetch_fuel_consumption_data_use_case.dart';
import 'package:viam_marine/domain/data_viam/use_case/get_is_fuel_consumption_over_time_fetching_done_use_case.dart';
import 'package:viam_marine/domain/data_viam/use_case/subscribe_to_fuel_consumption_stream_use_case.dart';
import 'package:viam_marine/domain/data_viam/use_case/subscribie_to_refresh_filters_use_case.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_over_time/cubit/fuel_consumption_over_time_state.dart';

@injectable
class FuelConsumptionOverTimeCubit extends Cubit<FuelConsumptionOverTimeState> {
  static const _tag = 'FuelConsumptionOverTimeCubit';

  final SubscribeToFuelConsumptionStreamUseCase _subscribeToFuelConsumptionStreamUseCase;
  final FetchFuelConsumptionDataUseCase _fetchFuelConsumptionDataUseCase;
  final SubscribeToRefreshFiltersUseCase _subscribeToRefreshFiltersUseCase;
  final GetIsFuelConsumptionOverTimeFetchingDoneUseCase _getIsFuelConsumptionOverTimeFetchingDoneUseCase;

  late String _locationId;
  late String _robotName;
  late String? _fuelSensorName;
  late String? _movementSensorName;

  StreamSubscription<List<FuelConsumptionOverTime>>? _fuelConsumptionOverTimeStream;
  StreamSubscription<FilterEvent>? _refreshFiltersStream;

  FuelConsumptionOverTimeCubit(
    this._fetchFuelConsumptionDataUseCase,
    this._subscribeToFuelConsumptionStreamUseCase,
    this._subscribeToRefreshFiltersUseCase,
    this._getIsFuelConsumptionOverTimeFetchingDoneUseCase,
  ) : super(const FuelConsumptionOverTimeState.idle());

  Future<void> init(
    String locationId,
    String robotName,
    String? fuelSensorName,
    String? movementSensorName,
  ) async {
    try {
      emit(const FuelConsumptionOverTimeState.loading());
      _fuelSensorName = fuelSensorName;
      _locationId = locationId;
      _robotName = robotName;
      _movementSensorName = movementSensorName;

      await _listenToRefreshFilterStream();
      _listenToFuelConsumptionOverTimeStream(fuelSensorName ?? '');

      await _fetchFuelConsumptionDataUseCase(
        locationId: locationId,
        robotName: robotName,
        fuelSensorName: fuelSensorName,
        movementSensorName: movementSensorName,
      );
    } catch (error, st) {
      emit(const FuelConsumptionOverTimeState.error());
      Fimber.e('Error while $_tag init', ex: error, stacktrace: st);
    }
  }

  Future<void> _listenToRefreshFilterStream() async {
    await _refreshFiltersStream?.cancel();
    _refreshFiltersStream = _subscribeToRefreshFiltersUseCase().listen((event) async {
      if (event == FilterEvent.fuelConsumptionOverTime) {
        emit(const FuelConsumptionOverTimeState.loading());
        if (_getIsFuelConsumptionOverTimeFetchingDoneUseCase(_fuelSensorName)) {
          await _fetchFuelConsumptionDataUseCase(
            locationId: _locationId,
            robotName: _robotName,
            fuelSensorName: _fuelSensorName,
            movementSensorName: _movementSensorName,
          );
        }
      }
    });
  }

  void _fuelConsumptionOverTimeStreamListener(List<FuelConsumptionOverTime> fuelConsumption) {
    try {
      final List<FuelConsumptionOverTime> fuelConsumptionOverTimeDataToDisplay =
          fuelConsumption.take(10).toList().reversed.toList();

      final yAxisMaxValue = maxBy(fuelConsumptionOverTimeDataToDisplay, (fuelOverTime) => fuelOverTime.value);

      if (yAxisMaxValue != null && yAxisMaxValue.value == 0) {
        final double max = yAxisMaxValue.value + 10;

        emit(FuelConsumptionOverTimeState.loaded(
          fuelConsumptionOverTimeDataToDisplay,
          max,
        ));
      } else {
        emit(FuelConsumptionOverTimeState.loaded(
          fuelConsumptionOverTimeDataToDisplay,
          yAxisMaxValue?.value ?? 10,
        ));
      }
    } catch (error, st) {
      emit(const FuelConsumptionOverTimeState.error());
      Fimber.e('Error while $_tag init', ex: error, stacktrace: st);
    }
  }

  void _listenToFuelConsumptionOverTimeStream(String fuelSensorName) {
    _fuelConsumptionOverTimeStream?.cancel();
    _fuelConsumptionOverTimeStream = _subscribeToFuelConsumptionStreamUseCase(
      fuelSensorName: fuelSensorName,
    ).listen(_fuelConsumptionOverTimeStreamListener);
  }

  @override
  Future<void> close() async {
    await _fuelConsumptionOverTimeStream?.cancel();
    return super.close();
  }
}
