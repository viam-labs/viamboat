import 'package:injectable/injectable.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@injectable
class AppViamDataSource {
  final Viam _viam;

  const AppViamDataSource(this._viam);

  Future<List<ViamOrganization>> listOrganizations() => _viam.viamAppService.listOrganizations();

  Future<List<ViamLocation>> listLocations(String? organizationId) =>
      _viam.viamAppService.listLocations(organizationId);

  Future<List<ViamRobot>> listRobots(String? locationId) => _viam.viamAppService.listRobots(locationId);

  Future<ViamOrganization> getOrganization(String? organizationId) =>
      _viam.viamAppService.getOrganizatoin(organizationId);

  Future<ViamRobot> getRobot(String? robotId) => _viam.viamAppService.getRobot(robotId);
}
