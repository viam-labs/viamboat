class ViamResourceName {
  final String namespace;
  final String type;
  final String subtype;
  final String name;

  const ViamResourceName(
    this.namespace,
    this.type,
    this.subtype,
    this.name,
  );

  @override
  bool operator ==(covariant ViamResourceName other) =>
      other.name == name && other.namespace == namespace && other.type == type && other.subtype == subtype;

  @override
  int get hashCode => Object.hash(
        namespace,
        type,
        subtype,
        name,
      );
}
