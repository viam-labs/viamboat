class ViamLinearVelocity {
  final double x;
  final double y;
  final double z;

  const ViamLinearVelocity(
    this.x,
    this.y,
    this.z,
  );

  @override
  bool operator ==(covariant ViamLinearVelocity other) => other.x == x && other.y == y && other.z == z;

  @override
  int get hashCode => Object.hash(x, y, z);
}
