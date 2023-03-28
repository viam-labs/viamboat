import 'package:equatable/equatable.dart';

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
