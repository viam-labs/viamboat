import 'package:viam_marine/app/domain/app/model/viam_app_organization.dart';

abstract class ViamAppAppService {
  Future<List<ViamAppOrganization>> listOrganizations();
}
