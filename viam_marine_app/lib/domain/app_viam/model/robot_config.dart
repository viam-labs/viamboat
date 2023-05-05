import 'package:equatable/equatable.dart';

class RobotConfig extends Equatable {
  final String name;
  final String id;
  final String location;
  final String secret;
  final String address;

  const RobotConfig({
    required this.name,
    required this.id,
    required this.location,
    required this.secret,
    required this.address,
  });

  @override
  List<Object?> get props => [
        name,
        id,
        location,
        secret,
        address,
      ];
}
