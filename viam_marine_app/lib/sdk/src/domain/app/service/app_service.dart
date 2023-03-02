import 'package:viam_marine/sdk/src/domain/app/model/organization.dart';

abstract class ViamAppService {
  Future<List<ViamOrganization>> listOrganizations();
}
