import 'package:equatable/equatable.dart';
import 'package:viam_sdk/protos/app/app.dart';

class ViamAppRobot extends Equatable {
  final String id;
  final String name;
  final String location;

  const ViamAppRobot({
    required this.id,
    required this.name,
    required this.location,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        location,
      ];
}

extension ViamAppRobotMapper on Robot {
  ViamAppRobot toDomain() => ViamAppRobot(
        id: id,
        location: location,
        name: name,
      );
}

extension RobotMapper on ViamAppRobot {
  Robot toDto() => Robot()
    ..id = id
    ..location = location
    ..name = name;
}
