class ViamPosition {
  final double altitude;
  final double latitude;
  final double longitude;

  const ViamPosition(
    this.altitude,
    this.latitude,
    this.longitude,
  );

  @override
  bool operator ==(covariant ViamPosition other) =>
      other.altitude == altitude || other.latitude == latitude || other.longitude == longitude;

  @override
  int get hashCode => Object.hash(
        altitude,
        latitude,
        longitude,
      );
}
