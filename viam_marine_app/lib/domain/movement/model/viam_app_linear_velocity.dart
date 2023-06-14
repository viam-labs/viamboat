import 'package:equatable/equatable.dart';
import 'package:viam_sdk/viam_sdk.dart';

class ViamAppLinearVelocity extends Equatable {
  final double x, y, z;

  const ViamAppLinearVelocity(
    this.x,
    this.y,
    this.z,
  );

  @override
  List<Object?> get props => [
        x,
        y,
        z,
      ];
}

extension ViamAppLinearVelocityMapper on Vector3 {
  ViamAppLinearVelocity toDomain() => ViamAppLinearVelocity(
        x,
        y,
        z,
      );
}
