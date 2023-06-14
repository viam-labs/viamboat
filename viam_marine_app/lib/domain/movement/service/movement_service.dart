import 'package:viam_marine/domain/movement/model/viam_app_compass_heading.dart';
import 'package:viam_marine/domain/movement/model/viam_app_linear_velocity.dart';
import 'package:viam_marine/domain/movement/model/viam_app_position.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';

abstract class ViamAppMovementService {
  Future<ViamAppPosition> getPosition(ViamAppResourceName resourceName);

  Future<ViamAppLinearVelocity> getLinearVelocity(ViamAppResourceName resourceName);

  Future<ViamAppCompassHeading> getCompassHeading(ViamAppResourceName resourceName);
}
