import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/depth_over_time/cubit/depth_over_time_state.dart';

@injectable
class DepthOverTimeCubit extends Cubit<DepthOverTimeState> {
  DepthOverTimeCubit() : super(const DepthOverTimeState.loaded());
}
