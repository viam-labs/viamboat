import 'package:equatable/equatable.dart';

class RobotAddressConfig extends Equatable {
  final String name;
  final String location;

  const RobotAddressConfig(this.name, this.location);

  @override
  List<Object?> get props => [name, location];
}
