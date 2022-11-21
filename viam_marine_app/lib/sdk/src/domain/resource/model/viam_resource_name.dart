class ViamResourceName {
  final String namespace;
  final String type;
  final String subtype;
  final String name;

  ViamResourceName(
    this.namespace,
    this.type,
    this.subtype,
    this.name,
  );

  @override
  // ignore: hash_and_equals
  bool operator ==(covariant ViamResourceName other) =>
      other.name == name && other.namespace == namespace && other.type == type && other.subtype == subtype;
}
