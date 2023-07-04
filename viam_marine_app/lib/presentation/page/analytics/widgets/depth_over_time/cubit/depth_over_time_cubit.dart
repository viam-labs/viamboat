import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:fimber_io/fimber_io.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/model/depth_over_time.dart';
import 'package:viam_marine/domain/data_viam/model/filter_event.dart';
import 'package:viam_marine/domain/data_viam/use_case/get_depth_over_time_data_use_case.dart';
import 'package:viam_marine/domain/data_viam/use_case/subscribie_to_refresh_filters_use_case.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/depth_over_time/cubit/depth_over_time_state.dart';

@injectable
class DepthOverTimeCubit extends Cubit<DepthOverTimeState> {
  static const _tag = 'DepthOverTimeCubit';
  final GetDepthOverTimeDataUseCase _getDepthOverTimeDataUseCase;
  final SubscribeToRefreshFiltersUseCase _subscribeToRefreshFiltersUseCase;

  StreamSubscription<FilterEvent>? _refreshFiltersStream;
  late String _locationId;
  late String _robotName;
  late String? _sensorName;

  DepthOverTimeCubit(
    this._getDepthOverTimeDataUseCase,
    this._subscribeToRefreshFiltersUseCase,
  ) : super(const DepthOverTimeState.idle());

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

  Future<void> _getDepthOverTimeData() async {
    try {
      emit(const DepthOverTimeState.loading());

      final List<DepthOverTime> data = await _getDepthOverTimeDataUseCase(
        locationId: _locationId,
        robotName: _robotName,
        sensorName: _sensorName,
        isInit: true,
      );

      final List<DepthOverTime> dataToDisplay = data.take(10).toList().reversed.toList();

      final maxDepthOverTime = maxBy(dataToDisplay, (depthOverTime) => depthOverTime.depth);
      final minDepthOverTime = minBy(dataToDisplay, (depthOverTime) => depthOverTime.depth);

      if ((maxDepthOverTime != null && minDepthOverTime != null) && maxDepthOverTime.depth == minDepthOverTime.depth) {
        final double min = minDepthOverTime.depth - 1;
        final double max = maxDepthOverTime.depth + 1;

        emit(DepthOverTimeState.loaded(
          dataToDisplay,
          max,
          min,
        ));
      } else {
        emit(DepthOverTimeState.loaded(
          dataToDisplay,
          maxDepthOverTime?.depth,
          minDepthOverTime?.depth,
        ));
      }
    } catch (error, st) {
      Fimber.e(
        '$_tag Error during cubit init',
        ex: error,
        stacktrace: st,
      );
      emit(const DepthOverTimeState.error());
    }
  }

  void _listenToRefreshFilters() {
    _refreshFiltersStream?.cancel();
    _refreshFiltersStream = _subscribeToRefreshFiltersUseCase().listen((event) async {
      await _getDepthOverTimeData();
    });
  }

  @override
  Future<void> close() {
    _refreshFiltersStream?.cancel();
    return super.close();
  }
}
