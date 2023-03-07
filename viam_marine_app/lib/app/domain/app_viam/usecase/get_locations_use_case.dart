import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_location.dart';
import 'package:viam_marine/app/domain/app_viam/service/app_viam_service.dart';

@injectable
class GetLocationsUseCase {
  final AppViamService _appViamService;

  const GetLocationsUseCase(this._appViamService);

  Future<List<ViamAppLocation>> call(String? organizationId) => _appViamService.listLocations(organizationId);
}
