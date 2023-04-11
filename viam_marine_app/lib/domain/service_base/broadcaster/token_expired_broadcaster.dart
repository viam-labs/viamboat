enum TokenExpiredEvent {
  expired,
}

abstract class TokenExpiredBroadcaster {
  Stream<TokenExpiredEvent> getRefreshStream();

  void notifyRefreshStream(TokenExpiredEvent event);
}
