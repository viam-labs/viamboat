class ViamRobot {
  final String id;
  final String name;
  final String location;
  final DateTime lastAccess;
  final DateTime createdOn;

  const ViamRobot({
    required this.id,
    required this.name,
    required this.location,
    required this.lastAccess,
    required this.createdOn,
  });
}
