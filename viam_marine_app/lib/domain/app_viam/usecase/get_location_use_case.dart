import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_location.dart';
import 'package:viam_marine/domain/app_viam/service/app_viam_service.dart';

@injectable
class GetLocationUseCase {
  final AppViamService _appViamService;

  const GetLocationUseCase(this._appViamService);

  Future<ViamAppLocation> call(String locationId) => _appViamService.getLocation(locationId);
}
