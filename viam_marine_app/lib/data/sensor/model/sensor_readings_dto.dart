class SensorReadingsDto {
  final String name;
  final Map<String, dynamic> readings;

  const SensorReadingsDto(
    this.name,
    this.readings,
  );
}
