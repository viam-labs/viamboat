import 'package:injectable/injectable.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@injectable
class AppViamDataSource {
  final Viam _viam;

  const AppViamDataSource(this._viam);

  Future<List<ViamOrganization>> listOrganizations() => _viam.viamAppService.listOrganizations();

  Future<List<ViamLocation>> listLocations(String? organizationId) =>
      _viam.viamAppService.listLocations(organizationId);
}
