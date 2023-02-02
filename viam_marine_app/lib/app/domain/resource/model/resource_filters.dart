enum ViamAppResourceSubtypeFilter {
  sensor('sensor'),
  camera('camera'),
  movement('movement_sensor');

  final String value;
  const ViamAppResourceSubtypeFilter(this.value);
}

enum ViamAppResourceNameFilter {
  fluid('fluid-'),
  movement('movement'),
  depth('depth');

  final String value;
  const ViamAppResourceNameFilter(this.value);
}
