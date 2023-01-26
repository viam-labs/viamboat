import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/movement/model/viam_app_linear_velocity.dart';
import 'package:viam_marine/app/domain/movement/service/movement_service.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';

@injectable
class GetLinearVelocityUseCase {
  final ViamAppMovementService _viamMovementService;

  const GetLinearVelocityUseCase(this._viamMovementService);

  Future<ViamAppLinearVelocity> call(ViamAppResourceName name) => _viamMovementService.getLinearVelocity(name);
}
