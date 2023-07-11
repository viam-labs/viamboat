import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_organization.dart';
import 'package:viam_marine/domain/app_viam/service/app_viam_service.dart';

@injectable
class GetOrganizationsListUseCase {
  final AppViamService _appService;

  const GetOrganizationsListUseCase(this._appService);

  Future<List<ViamAppOrganization>> call() => _appService.getOrganizations();
}
