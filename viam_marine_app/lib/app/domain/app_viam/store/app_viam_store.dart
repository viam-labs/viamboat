abstract class AppViamStore {
  Future<void> setOrganizationId(String organizationId);

  Future<void> setLocationId(String locationId);

  Future<void> setRobotId(String robotId);

  String? getOrganizationId();

  String? getLocationId();

  String? getRobotId();
}
