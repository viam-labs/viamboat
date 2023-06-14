import 'package:equatable/equatable.dart';
import 'package:viam_sdk/viam_sdk.dart';

class ViamAppPosition extends Equatable {
  final double altitude;
  final double latitude;
  final double longitude;

  const ViamAppPosition(
    this.altitude,
    this.latitude,
    this.longitude,
  );

  @override
  List<Object?> get props => [
        altitude,
        latitude,
        longitude,
      ];
}

extension ViamAppPositionMapper on Position {
  ViamAppPosition toDomain() => ViamAppPosition(
        altitude,
        coordinates.latitude,
        coordinates.longitude,
      );
}
