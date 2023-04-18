import 'package:injectable/injectable.dart';
import 'package:viam_sdk/viam_sdk.dart';

const builtinName = 'builtin';

@injectable
class SensorDataSource {
  final Viam _viamSdk;

  SensorDataSource(@Named('viamSdk') this._viamSdk);

  Future<List<ViamSensorReadings>> getSensorData(List<ViamResourceName> resourceNames) =>
      _viamSdk.viamSensorService.getSensorData(
        resourceNames,
        builtinName,
      );
}
