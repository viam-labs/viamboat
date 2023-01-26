import 'package:viam_marine/sdk/src/domain/movement/model/viam_linear_velocity.dart';
import 'package:viam_marine/sdk/src/domain/movement/model/viam_position.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/viam_resource_name.dart';

abstract class ViamMovementService {
  Future<ViamPosition> getPositionData(ViamResourceName name);

  Future<ViamLinearVelocity> getLinearVelocity(ViamResourceName name);
}
