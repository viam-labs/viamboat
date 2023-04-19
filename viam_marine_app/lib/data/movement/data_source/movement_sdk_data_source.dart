import 'package:injectable/injectable.dart';
import 'package:viam_marine/utils/viam_constants.dart';
import 'package:viam_sdk/viam_sdk.dart';

@injectable
class ViamAppMovementSdkDataSource {
  final Viam _viamSdk;

  ViamAppMovementSdkDataSource(@Named(ViamConstants.sdkClientName) this._viamSdk);

  Future<ViamPosition> getPosition(ViamResourceName resourceName) =>
      _viamSdk.viamMovementService.getPositionData(resourceName);

  Future<ViamLinearVelocity> getLinearVelocity(ViamResourceName resourceName) =>
      _viamSdk.viamMovementService.getLinearVelocity(resourceName);
}
