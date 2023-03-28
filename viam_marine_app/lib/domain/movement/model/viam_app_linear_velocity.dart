import 'package:equatable/equatable.dart';

class ViamAppLinearVelocity extends Equatable {
  final double x, y, z;

  const ViamAppLinearVelocity(this.x, this.y, this.z);

  @override
  List<Object?> get props => [
        x,
        y,
        z,
      ];
}
