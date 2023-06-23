import 'package:fimber_io/fimber_io.dart';
import 'package:injectable/injectable.dart';
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

  final List<AnalyticsType> _analyticsTypes = [];
  late List<String?> _sensorNames;

  AnalyticsCubit() : super(const AnalyticsState.idle());

  void init(List<String?> sensorNames) {
    try {
      emit(const AnalyticsState.loading());
      _sensorNames = sensorNames;
      _addAnalyticsTypes();

      emit(AnalyticsState.loaded(_analyticsTypes));
    } catch (error, st) {
      emit(const AnalyticsState.error());

      _analyticsTypes.clear();

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
