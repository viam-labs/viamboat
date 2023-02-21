import 'dart:async';

mixin RefreshStreamMixin<T> {
  // ignore: close_sinks
  final StreamController<T> _refreshStream = StreamController.broadcast();

  void notifyRefreshStream(T event) => _refreshStream.sink.add(event);

  Stream<T> getRefreshStream() => _refreshStream.stream;
}
