import 'dart:async';

import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/model/depth_over_time.dart';
import 'package:viam_marine/domain/data_viam/model/filter_event.dart';
import 'package:viam_marine/domain/data_viam/use_case/get_depth_over_time_data_use_case.dart';
import 'package:viam_marine/domain/data_viam/use_case/subscribie_to_refresh_filters_use_case.dart';
import 'package:viam_marine/presentation/page/depth_over_time/cubit/depth_over_time_page_state.dart';
import 'package:viam_marine/utils/safety_cubit.dart';

@injectable
class DepthOverTimePageCubit extends ViamCubit<DepthOverTimePageState> {
  final GetDepthOverTimeDataUseCase _getDepthOverTimeDataUseCase;
  final SubscribeToRefreshFiltersUseCase _subscribeToRefreshFiltersUseCase;

  StreamSubscription<FilterEvent>? _refreshFiltersStream;
  late String _locationId;
  late String _robotName;
  late String? _sensorName;
  List<List<DepthOverTime>> _depthOverTimeList = [];
  int _currentIndex = 0;

  DepthOverTimePageCubit(
    this._getDepthOverTimeDataUseCase,
    this._subscribeToRefreshFiltersUseCase,
  ) : super(const DepthOverTimePageState.idle());

  Future<void> init(
    String locationId,
    String robotName,
    String? sensorName,
  ) async {
    _locationId = locationId;
    _robotName = robotName;
    _sensorName = sensorName;

    _listenToRefreshFilters();
    await _getDepthOverTimeData();
  }

  Future<void> _getDepthOverTimeData([int index = 0, bool isInit = true]) async {
    emit(const DepthOverTimePageState.loading());

    final List<DepthOverTime> data = await _getDepthOverTimeDataUseCase(
      locationId: _locationId,
      robotName: _robotName,
      sensorName: _sensorName,
      isInit: isInit,
    );

    _depthOverTimeList = data.slices(10).toList(growable: false);
    _emitLoadedState(index);
  }

  Future<void> onBackButtonPressed() async {
    if (_currentIndex + 1 > _depthOverTimeList.length - 1) {
      await _getDepthOverTimeData(_currentIndex++, false);
    } else {
      _currentIndex++;
      _emitLoadedState(_currentIndex);
    }
  }

  void onForwardButtonPressed() {
    if (_currentIndex - 1 < 0) {
      return;
    }

    _currentIndex--;
    _emitLoadedState(_currentIndex);
  }

  void _emitLoadedState(int index) {
    final List<DepthOverTime> dataToDisplay = _depthOverTimeList[index].reversed.toList(growable: false);

    final DepthOverTime? maxDepthOverTime = maxBy(dataToDisplay, (depthOverTime) => depthOverTime.depth);

    final DepthOverTime? minDepthOverTime = minBy(dataToDisplay, (depthOverTime) => depthOverTime.depth);

    if ((maxDepthOverTime != null && minDepthOverTime != null) && maxDepthOverTime.depth == minDepthOverTime.depth) {
      final double min = minDepthOverTime.depth - 1;
      final double max = maxDepthOverTime.depth + 1;

      emit(DepthOverTimePageState.loaded(
        dataToDisplay,
        max,
        min,
      ));
    } else {
      emit(DepthOverTimePageState.loaded(
        dataToDisplay,
        maxDepthOverTime?.depth,
        minDepthOverTime?.depth,
      ));
    }
  }

  void _listenToRefreshFilters() {
    _refreshFiltersStream?.cancel();
    _refreshFiltersStream = _subscribeToRefreshFiltersUseCase().listen((event) async {
      if (event == FilterEvent.depthOverTime) {
        await _getDepthOverTimeData(0, true);
      }
    });
  }
}
