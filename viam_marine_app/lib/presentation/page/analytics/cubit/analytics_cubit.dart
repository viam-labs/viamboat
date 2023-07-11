import 'package:collection/collection.dart';
import 'package:fimber_io/fimber_io.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/auth/usecase/connect_to_analytics_use_case.dart';
import 'package:viam_marine/domain/auth/usecase/get_token_or_null_use_case.dart';
import 'package:viam_marine/domain/data_viam/model/analytics_data.dart';
import 'package:viam_marine/presentation/page/analytics/cubit/analytics_state.dart';
import 'package:viam_marine/utils/safety_cubit.dart';
import 'package:viam_marine/utils/viam_constants.dart';

@injectable
class AnalyticsCubit extends ViamCubit<AnalyticsState> {
  static const _tag = 'AnalyticsCubit';

  final ConnectToAnalyticsUseCase _connectToAnalyticsUseCase;
  final GetTokenOrNullUseCase _getTokenOrNullUseCase;
  final List<AnalyticsData> _analyticsData = [];
  late List<String?> _sensorNames;

  AnalyticsCubit(
    this._connectToAnalyticsUseCase,
    this._getTokenOrNullUseCase,
  ) : super(const AnalyticsState.idle());

  Future<void> init(List<String?> sensorNames) async {
    try {
      emit(const AnalyticsState.loading());
      final token = await _getTokenOrNullUseCase();
      await _connectToAnalyticsUseCase(
        url: ViamConstants.appViamAddress,
        token: token,
      );
      _sensorNames = sensorNames;
      _addAnalyticsTypes();

      emit(AnalyticsState.loaded(_analyticsData));
    } catch (error, st) {
      emit(const AnalyticsState.error());

      _analyticsData.clear();

      Fimber.e(
        '$_tag: Error while initializing cubit',
        ex: error,
        stacktrace: st,
      );
    }
  }

  void _addAnalyticsTypes() {
    if (_containsSensorName(ViamConstants.resourceTemperature) && _containsSensorName(ViamConstants.resourceMovement)) {
      final movementSensor = _getSensorName(ViamConstants.resourceMovement);
      final tempSensor = _getSensorName(ViamConstants.resourceTemperature);
      final tempAnalyticsData = AnalyticsData(
        type: AnalyticsType.waterTemperature,
        sensorNames: [
          movementSensor,
          tempSensor,
        ],
      );

      _analyticsData.add(tempAnalyticsData);
    }

    if (_containsSensorName(ViamConstants.resourceDepth) && _containsSensorName(ViamConstants.resourceMovement)) {
      final movementSensor = _getSensorName(ViamConstants.resourceMovement);
      final depthSensor = _getSensorName(ViamConstants.resourceDepth);
      final waterDepthAnalyticsData = AnalyticsData(
        type: AnalyticsType.waterDepth,
        sensorNames: [
          movementSensor,
          depthSensor,
        ],
      );

      _analyticsData.add(waterDepthAnalyticsData);
    }

    if (_containsSensorName(ViamConstants.resourceDepth)) {
      final depthSensor = _getSensorName(ViamConstants.resourceDepth);
      final depthOverTimeAnalyticsData = AnalyticsData(
        type: AnalyticsType.depthOverTime,
        sensorNames: [depthSensor],
      );

      _analyticsData.add(depthOverTimeAnalyticsData);
    }

    if (_containsSensorName(ViamConstants.resourceFuel) && _containsSensorName(ViamConstants.resourceMovement)) {
      final fuelSensors = _sensorNames
          .where((name) => name?.toLowerCase().contains(ViamConstants.resourceFuel) ?? false)
          .toList(growable: false);
      final movementSensor = _getSensorName(ViamConstants.resourceMovement);

      fuelSensors.sort((a, b) => a?.compareTo(b ?? '') ?? -1);

      for (final fuelSensor in fuelSensors) {
        final fuelConsumptionOverTimeAnalyticsData = AnalyticsData(
          type: AnalyticsType.fuelConsumptionOverTime,
          sensorNames: [
            movementSensor,
            fuelSensor,
          ],
        );

        _analyticsData.add(fuelConsumptionOverTimeAnalyticsData);
      }
    }
  }

  String? _getSensorName(String resourceName) => _sensorNames.firstWhereOrNull(
        (name) => name?.toLowerCase().contains(resourceName) ?? false,
      );

  bool _containsSensorName(String resourceName) =>
      _sensorNames.any((name) => name?.toLowerCase().contains(resourceName) ?? false);
}
