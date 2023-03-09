import 'package:equatable/equatable.dart';

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
