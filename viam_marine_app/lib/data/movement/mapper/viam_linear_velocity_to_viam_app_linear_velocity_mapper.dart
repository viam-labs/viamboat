import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/movement/model/viam_app_linear_velocity.dart';
import 'package:viam_sdk/viam_sdk.dart';

@injectable
class ViamLinearVelocityToViamAppLinearVelocityMapper {
  ViamAppLinearVelocity call(ViamLinearVelocity dto) => ViamAppLinearVelocity(
        dto.x,
        dto.y,
        dto.z,
      );
}
