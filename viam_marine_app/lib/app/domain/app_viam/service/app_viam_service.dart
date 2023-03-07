import 'package:viam_marine/app/domain/app_viam/model/viam_app_location.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_organization.dart';

abstract class AppViamService {
  Future<List<ViamAppOrganization>> listOrganizations();

  Future<List<ViamAppLocation>> listLocations(String? organizationId);
}
