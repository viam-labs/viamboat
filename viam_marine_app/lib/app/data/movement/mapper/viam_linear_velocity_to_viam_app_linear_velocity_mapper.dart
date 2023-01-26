import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/movement/model/viam_app_linear_velocity.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@injectable
class ViamLinearVelocityToViamAppLinearVelocityMapper {
  ViamAppLinearVelocity call(ViamLinearVelocity dto) => ViamAppLinearVelocity(
        dto.x,
        dto.y,
        dto.z,
      );
}
