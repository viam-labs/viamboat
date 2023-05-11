import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/model/depth_over_time.dart';
import 'package:viam_marine/domain/data_viam/use_case/get_depth_over_time_data_use_case.dart';
import 'package:viam_marine/presentation/page/depth_over_time/cubit/depth_over_time_page_state.dart';

@injectable
class DepthOverTimePageCubit extends Cubit<DepthOverTimePageState> {
  final GetDepthOverTimeDataUseCase _getDepthOverTimeDataUseCase;

  DepthOverTimePageCubit(this._getDepthOverTimeDataUseCase) : super(const DepthOverTimePageState.idle());

  Future<void> init() async {
    emit(const DepthOverTimePageState.loading());

    final List<DepthOverTime> data = await _getDepthOverTimeDataUseCase();
    final maxDepthOverTime = maxBy(data, (depthOverTime) => depthOverTime.depth);

    emit(DepthOverTimePageState.loaded(data, maxDepthOverTime?.depth ?? 10.0));
  }
}
