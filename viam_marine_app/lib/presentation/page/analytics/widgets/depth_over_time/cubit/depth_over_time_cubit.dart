import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/use_case/get_tabular_data_by_filter_use_case.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/depth_over_time/cubit/depth_over_time_state.dart';
import 'package:viam_sdk/viam_sdk.dart';

@injectable
class DepthOverTimeCubit extends Cubit<DepthOverTimeState> {
  final GetTabularDataByFilterUseCase _getTabularDataByFilterUseCase;

  DepthOverTimeCubit(
    this._getTabularDataByFilterUseCase,
  ) : super(const DepthOverTimeState.loading());

  Future<void> init() async {
    final data = await _getTabularDataByFilterUseCase(
      viamDataRequest: ViamDataRequest(
        filter: ViamFilter(
          captureInterval: ViamCaptureInterval(
            start: DateTime(2023, 4, 17, 12, 19),
          ),
        ),
      ),
    );

    emit(const DepthOverTimeState.loaded());
  }
}
