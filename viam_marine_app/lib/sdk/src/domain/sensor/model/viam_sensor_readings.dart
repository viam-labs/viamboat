class ViamSensorReadings {
  final String namespace;
  final String type;
  final String subtype;
  final String name;
  final Map<String, double> readings;

  const ViamSensorReadings(
    this.namespace,
    this.type,
    this.subtype,
    this.name,
    this.readings,
  );

  @override
  bool operator ==(covariant ViamSensorReadings other) =>
      other.name == name &&
      other.namespace == namespace &&
      other.type == type &&
      other.subtype == subtype &&
      other.readings.toString() == readings.toString();

  @override
  int get hashCode => Object.hash(
        namespace,
        type,
        subtype,
        name,
      );
}
