enum AnalyticsEvent {
  openApp('open_app'),
  addBoat('add_boat'),
  deleteBoat('delete_boat');

  final String name;

  const AnalyticsEvent(this.name);
}
