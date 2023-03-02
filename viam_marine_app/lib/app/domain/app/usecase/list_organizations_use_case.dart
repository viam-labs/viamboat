import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/app/model/viam_app_organization.dart';
import 'package:viam_marine/app/domain/app/service/viam_app_app_servcie.dart';

@injectable
class ListOrganizationsUseCase {
  final ViamAppAppService _appService;

  const ListOrganizationsUseCase(this._appService);

  Future<List<ViamAppOrganization>> call() => _appService.listOrganizations();
}
