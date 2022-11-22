import 'package:injectable/injectable.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@injectable
class ViamAppMovementSdkDataSource {
  final ViamSdk _viamSdk;

  ViamAppMovementSdkDataSource(this._viamSdk);

  Future<ViamPosition> getPosition(ViamResourceName resourceName) => _viamSdk.getPositionData(resourceName);
}
