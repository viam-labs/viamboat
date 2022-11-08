import 'package:injectable/injectable.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

const builtinName = 'builtin';

@injectable
class SensorDataSource {
  final ViamSdk _viamSdk;

  SensorDataSource(@Named('sensor') this._viamSdk);

  Future<List<ViamSensorReadings>> getSensorData(List<ViamResourceName> resourceNames) => _viamSdk.getSensorData(
        resourceNames,
        builtinName,
      );
}
