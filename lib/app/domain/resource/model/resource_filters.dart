enum ViamAppResourceSubtypeFilter {
  sensor('sensor');

  final String value;
  const ViamAppResourceSubtypeFilter(this.value);
}

enum ViamAppResourceNameFilter {
  fluid('fluid-'),
  movement('movement');

  final String value;
  const ViamAppResourceNameFilter(this.value);
}