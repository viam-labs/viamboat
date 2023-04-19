import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/model/depth_over_time.dart';
import 'package:viam_marine/domain/data_viam/use_case/get_depth_over_time_data_use_case.dart';
import 'package:viam_marine/domain/data_viam/use_case/get_tabular_data_by_filter_use_case.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/depth_over_time/cubit/depth_over_time_state.dart';

@injectable
class DepthOverTimeCubit extends Cubit<DepthOverTimeState> {
  // ignore: unused_field
  final GetTabularDataByFilterUseCase _getTabularDataByFilterUseCase;
  final GetDepthOverTimeDataUseCase _getDepthOverTimeDataUseCase;

  DepthOverTimeCubit(
    this._getTabularDataByFilterUseCase,
    this._getDepthOverTimeDataUseCase,
  ) : super(const DepthOverTimeState.loading());

  Future<void> init() async {
    //TODO: call for real data when ready
    //
    // final data = await _getTabularDataByFilterUseCase(
    //   viamDataRequest: ViamDataRequest(
    //     filter: ViamFilter(
    //       captureInterval: ViamCaptureInterval(
    //         start: DateTime(2023, 4, 17, 12, 19),
    //       ),
    //     ),
    //   ),
    // );

    final List<DepthOverTime> data = await _getDepthOverTimeDataUseCase();

    final maxDepthOverTime = maxBy(data, (depthOverTime) => depthOverTime.depth);

    emit(DepthOverTimeState.loaded(data, maxDepthOverTime?.depth ?? 10.0));
  }
}
