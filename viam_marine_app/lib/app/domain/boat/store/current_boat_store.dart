abstract class CurrentBoatStore {
  Future<void> setCurrentBoatId(String id);

  String? getCurrentBoatId();
}
