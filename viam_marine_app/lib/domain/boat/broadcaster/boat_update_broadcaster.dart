enum BoatUpdateEvent {
  nameChanged,
}

abstract class BoatUpdateBroadcaster {
  Stream<BoatUpdateEvent> getRefreshStream();

  void notifyRefreshStream(BoatUpdateEvent event);
}
