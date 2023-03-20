import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/presentation/page/analytics/cubit/analytics_state.dart';
import 'package:viam_marine/app/utils/safety_cubit.dart';

@injectable
class AnalyticsCubit extends ViamCubit<AnalyticsState> {
  AnalyticsCubit() : super(const AnalyticsState.loaded());
}
