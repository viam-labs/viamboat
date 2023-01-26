import 'package:viam_marine/sdk/src/data/viam/movementsensor/v1/movementsensor.pb.dart';
import 'package:viam_marine/sdk/src/domain/movement/model/viam_linear_velocity.dart';

class GetLinearVelocityResponseToViamVelocityMapper {
  ViamLinearVelocity call(GetLinearVelocityResponse dto) => ViamLinearVelocity(
        dto.linearVelocity.x,
        dto.linearVelocity.y,
        dto.linearVelocity.z,
      );
}
