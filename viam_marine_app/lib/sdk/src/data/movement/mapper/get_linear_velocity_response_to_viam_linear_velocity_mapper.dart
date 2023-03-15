import 'package:viam_marine/sdk/src/data/movement/model/viam_linear_velocity.dart';
import 'package:viam_marine/sdk/src/gen/component/movementsensor/v1/movementsensor.pb.dart';

class GetLinearVelocityResponseToViamVelocityMapper {
  ViamLinearVelocity call(GetLinearVelocityResponse dto) => ViamLinearVelocity(
        dto.linearVelocity.x,
        dto.linearVelocity.y,
        dto.linearVelocity.z,
      );
}
