import 'package:viam_marine/app/domain/movement/model/viam_app_position.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';

abstract class ViamAppMovementService {
  Future<ViamAppPosition> getPosition(ViamAppResourceName resourceName);
}