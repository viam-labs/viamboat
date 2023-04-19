import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/model/depth_over_time.dart';
import 'package:viam_marine/domain/data_viam/use_case/get_depth_over_time_data_use_case.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/depth_over_time/cubit/depth_over_time_state.dart';

@injectable
class DepthOverTimeCubit extends Cubit<DepthOverTimeState> {
  final GetDepthOverTimeDataUseCase _getDepthOverTimeDataUseCase;

  DepthOverTimeCubit(
    this._getDepthOverTimeDataUseCase,
  ) : super(const DepthOverTimeState.loading());

  Future<void> init() async {
    final List<DepthOverTime> data = await _getDepthOverTimeDataUseCase();

    final maxDepthOverTime = maxBy(data, (depthOverTime) => depthOverTime.depth);

    emit(DepthOverTimeState.loaded(data, maxDepthOverTime?.depth ?? 10.0));
  }
}
