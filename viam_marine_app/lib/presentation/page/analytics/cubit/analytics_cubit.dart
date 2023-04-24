import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/use_case/connect_to_viam_app_use_case.dart';
import 'package:viam_marine/domain/viam/usecase/get_token_or_null_use_case.dart';
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
  final ConnectToViamAppUseCase _connectToViamAppUseCase;
  final GetTokenOrNullUseCase _getTokenOrNullUseCase;
  final List<AnalyticsType> _analyticsTypes = [
    AnalyticsType.waterTemperature,
    AnalyticsType.waterDepth,
    AnalyticsType.depthOverTime,
    AnalyticsType.fuelConsumptionPerTime,
    AnalyticsType.fuelConsumptionPerMile,
  ];

  AnalyticsCubit(
    this._connectToViamAppUseCase,
    this._getTokenOrNullUseCase,
  ) : super(const AnalyticsState.idle());

  Future<void> init() async {
    emit(const AnalyticsState.loading());
    final token = await _getTokenOrNullUseCase();
    await _connectToViamAppUseCase(accessToken: token);
    emit(AnalyticsState.loaded(_analyticsTypes));
  }
}
