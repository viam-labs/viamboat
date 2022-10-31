class ViamSensorReadings {
  final String namespace;
  final String type;
  final String subtype;
  final String name;
  final Map<String, double> readings;

  ViamSensorReadings(
    this.namespace,
    this.type,
    this.subtype,
    this.name,
    this.readings,
  );
}
