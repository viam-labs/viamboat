import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/movement/model/viam_app_compass_heading.dart';
import 'package:viam_marine/domain/movement/service/movement_service.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';

@injectable
class GetCompassHeadingUseCase {
  final ViamAppMovementService _movementService;

  const GetCompassHeadingUseCase(this._movementService);

  Future<ViamAppCompassHeading> call(ViamAppResourceName resourceName) =>
      _movementService.getCompassHeading(resourceName);
}
