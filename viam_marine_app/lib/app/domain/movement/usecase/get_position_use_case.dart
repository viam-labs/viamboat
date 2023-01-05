import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/movement/model/viam_app_position.dart';
import 'package:viam_marine/app/domain/movement/service/movement_service.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';

@injectable
class GetPostionUseCase {
  final ViamAppMovementService _viamAppMovementService;

  const GetPostionUseCase(this._viamAppMovementService);

  Future<ViamAppPosition> call(ViamAppResourceName resourceName) => _viamAppMovementService.getPosition(resourceName);
}
