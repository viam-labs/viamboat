enum ViamAppResourceSubtypeFilter {
  sensor('sensor'),
  camera('camera');

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
