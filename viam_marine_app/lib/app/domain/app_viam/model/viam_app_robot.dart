import 'package:equatable/equatable.dart';
import 'package:viam_sdk/viam_sdk.dart';

class ViamAppRobot extends Equatable {
  final String id;
  final String name;
  final String location;
  final DateTime lastAccess;
  final DateTime createdOn;

  const ViamAppRobot({
    required this.id,
    required this.name,
    required this.location,
    required this.lastAccess,
    required this.createdOn,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        location,
        lastAccess,
        createdOn,
      ];
}

extension ViamAppRobotMapper on ViamRobot {
  ViamAppRobot toDomain() => ViamAppRobot(
        createdOn: createdOn,
        id: id,
        lastAccess: lastAccess,
        location: location,
        name: name,
      );
}
