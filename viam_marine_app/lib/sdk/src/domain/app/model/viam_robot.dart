import 'package:viam_marine/sdk/src/gen/app/v1/app.pb.dart';

class ViamRobot {
  final String id;
  final String name;
  final String location;
  final DateTime lastAccess;
  final DateTime createdOn;

  const ViamRobot({
    required this.id,
    required this.name,
    required this.location,
    required this.lastAccess,
    required this.createdOn,
  });
}

extension ViamRobotMapper on Robot {
  ViamRobot toDomain() => ViamRobot(
        id: id,
        name: name,
        location: location,
        lastAccess: lastAccess.toDateTime(),
        createdOn: createdOn.toDateTime(),
      );
}
