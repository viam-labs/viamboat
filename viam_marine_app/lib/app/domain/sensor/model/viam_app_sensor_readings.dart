class ViamAppSensorReadings {
  final String namespace;
  final String type;
  final String subtype;
  final String name;
  final Map<String, double> readings;

  ViamAppSensorReadings(
      this.namespace,
      this.type,
      this.subtype,
      this.name,
      this.readings,
      );
}
