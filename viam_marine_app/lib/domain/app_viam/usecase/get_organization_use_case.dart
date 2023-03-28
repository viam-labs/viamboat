import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_organization.dart';
import 'package:viam_marine/domain/app_viam/service/app_viam_service.dart';

@injectable
class GetOrganizationUseCase {
  final AppViamService _appViamService;

  const GetOrganizationUseCase(this._appViamService);

  Future<ViamAppOrganization> call(String? organizationId) => _appViamService.getOrganization(organizationId);
}
