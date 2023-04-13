import 'package:injectable/injectable.dart';
import 'package:viam_marine/presentation/page/analytics/cubit/analytics_state.dart';
import 'package:viam_marine/utils/safety_cubit.dart';

enum AnalyticsType {
  waterTemperature,
  waterDepth,
  fuelConsumptionPerTime,
  fuelConsumptionPerMile,
  depthOverTime,
}

@injectable
class AnalyticsCubit extends ViamCubit<AnalyticsState> {
  final List<AnalyticsType> _analyticsTypes = [
    AnalyticsType.waterTemperature,
    AnalyticsType.waterDepth,
    AnalyticsType.fuelConsumptionPerTime,
    AnalyticsType.fuelConsumptionPerMile,
    AnalyticsType.depthOverTime,
  ];

  AnalyticsCubit() : super(const AnalyticsState.idle());

  void init() => emit(AnalyticsState.loaded(_analyticsTypes));
}
