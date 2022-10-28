enum ResourceSubtypeFilters {
  sensor('sensor');

  final String value;
  const ResourceSubtypeFilters(this.value);
}

enum ResourceNameFilters {
  fluid('fluid-');

  final String value;
  const ResourceNameFilters(this.value);
}