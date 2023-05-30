import 'package:injectable/injectable.dart';
import 'package:viam_marine/utils/viam_constants.dart';
import 'package:viam_sdk/viam_sdk.dart';

@injectable
class AppViamDataSource {
  final Viam _viam;

  const AppViamDataSource(@Named(ViamConstants.sdkDirectClientName) this._viam);

  Future<List<ViamOrganization>> listOrganizations() => _viam.viamAppService.listOrganizations();

  Future<List<ViamLocation>> listLocations(String? organizationId) =>
      _viam.viamAppService.listLocations(organizationId);

  Future<List<ViamRobot>> listRobots(String? locationId) async => _viam.viamAppService.listRobots(locationId);

  Future<ViamOrganization> getOrganization(String? organizationId) =>
      _viam.viamAppService.getOrganizatoin(organizationId);

  Future<ViamRobot> getRobot(String? robotId) => _viam.viamAppService.getRobot(robotId);

  Future<ViamLocation> getLocation(String? locationId) => _viam.viamAppService.getLocation(locationId);

  Future<List<ViamRobotPart>> getRobotParts(String robotId) => _viam.viamAppService.getRobotParts(robotId);

  Future<void> connectToViamApp({required String? accessToken}) => _viam.connect(
        url: ViamConstants.appViamAddress,
        disableWebRtc: true,
        port: 443,
        secure: true,
        accessToken: accessToken,
      );
}
