import 'package:viam_marine/sdk/src/domain/app/model/organization.dart';
import 'package:viam_marine/sdk/src/domain/app/model/viam_location.dart';

abstract class ViamAppService {
  Future<List<ViamOrganization>> listOrganizations();

  Future<List<ViamLocation>> listLocations(String? organizationId);
}
