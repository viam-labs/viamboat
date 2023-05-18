import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:fimber_io/fimber_io.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/model/depth_over_time.dart';
import 'package:viam_marine/domain/data_viam/use_case/get_depth_over_time_data_use_case.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/depth_over_time/cubit/depth_over_time_state.dart';

@injectable
class DepthOverTimeCubit extends Cubit<DepthOverTimeState> {
  static const _tag = 'DepthOverTimeCubit';
  final GetDepthOverTimeDataUseCase _getDepthOverTimeDataUseCase;

  DepthOverTimeCubit(
    this._getDepthOverTimeDataUseCase,
  ) : super(const DepthOverTimeState.idle());

  Future<void> init(
    String locationId,
    String robotName,
    String? sensorName,
  ) async {
    try {
      emit(const DepthOverTimeState.loading());

      final List<DepthOverTime> data = await _getDepthOverTimeDataUseCase(
        locationId: locationId,
        robotName: robotName,
        sensorName: sensorName,
      );

      final List<DepthOverTime> dataToDisplay = data.reversed.take(10).toList().reversed.toList();

      final maxDepthOverTime = maxBy(dataToDisplay, (depthOverTime) => depthOverTime.depth);
      final minDepthOverTime = minBy(dataToDisplay, (depthOverTime) => depthOverTime.depth);

      emit(DepthOverTimeState.loaded(
        dataToDisplay,
        maxDepthOverTime?.depth,
        minDepthOverTime?.depth,
      ));
    } catch (error, st) {
      Fimber.e(
        '$_tag Error during cubit init',
        ex: error,
        stacktrace: st,
      );
      emit(const DepthOverTimeState.error());
    }
  }
}
