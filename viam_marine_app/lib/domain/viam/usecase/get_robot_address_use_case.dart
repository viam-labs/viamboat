import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/viam/model/robot_address_config.dart';

@injectable
class GetRobotAddressUseCase {
  String call(RobotAddressConfig config) => '${config.name}-main.${config.location}.viam.cloud';
}
