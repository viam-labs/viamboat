import 'package:fimber_io/fimber_io.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/use_case/connect_to_viam_app_use_case.dart';
import 'package:viam_marine/domain/viam/usecase/get_token_or_null_use_case.dart';
import 'package:viam_marine/presentation/page/analytics/cubit/analytics_state.dart';
import 'package:viam_marine/utils/safety_cubit.dart';
import 'package:viam_marine/utils/viam_constants.dart';

enum AnalyticsType {
  waterTemperature,
  waterDepth,
  fuelConsumptionOverTime,
  fuelConsumptionPerMile,
  depthOverTime,
}

@injectable
class AnalyticsCubit extends ViamCubit<AnalyticsState> {
  static const _tag = 'AnalyticsCubit';

  final ConnectToViamAppUseCase _connectToViamAppUseCase;
  final GetTokenOrNullUseCase _getTokenOrNullUseCase;

  final List<AnalyticsType> _analyticsTypes = [];
  late List<String?> _sensorNames;

  AnalyticsCubit(
    this._connectToViamAppUseCase,
    this._getTokenOrNullUseCase,
  ) : super(const AnalyticsState.idle());

  Future<void> init(List<String?> sensorNames) async {
    try {
      emit(const AnalyticsState.loading());
      _sensorNames = sensorNames;
      _addAnalyticsTypes();
      final token = await _getTokenOrNullUseCase();
      await _connectToViamAppUseCase(accessToken: token);

      emit(AnalyticsState.loaded(_analyticsTypes));
    } catch (error, st) {
      emit(const AnalyticsState.error());
      Fimber.e(
        '$_tag: Error while initializing cubit',
        ex: error,
        stacktrace: st,
      );
    }
  }

  void _addAnalyticsTypes() {
    if (_containsSensorName(ViamConstants.resourceTemperature) && _containsSensorName(ViamConstants.resourceMovement)) {
      _analyticsTypes.add(AnalyticsType.waterTemperature);
    }

    if (_containsSensorName(ViamConstants.resourceDepth) && _containsSensorName(ViamConstants.resourceMovement)) {
      _analyticsTypes.add(AnalyticsType.waterDepth);
    }

    if (_containsSensorName(ViamConstants.resourceDepth)) {
      _analyticsTypes.add(AnalyticsType.depthOverTime);
    }

    //TODO: Add check after migration to real data
    _analyticsTypes.add(AnalyticsType.fuelConsumptionOverTime);
    _analyticsTypes.add(AnalyticsType.fuelConsumptionPerMile);
  }

  bool _containsSensorName(String resourceName) => _sensorNames.any((name) => name?.contains(resourceName) ?? false);
}
