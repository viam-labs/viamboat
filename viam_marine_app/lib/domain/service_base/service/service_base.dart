import 'dart:async';

import 'package:viam_marine/domain/service_base/broadcaster/token_expired_broadcaster.dart';
import 'package:viam_marine/extensions/object_extension.dart';

abstract class ServiceBase {
  final TokenExpiredBroadcaster _tokenExpiredBroadcaster;

  const ServiceBase(this._tokenExpiredBroadcaster);

  FutureOr<T> call<T>(FutureOr<T> Function() method) async {
    T result;
    try {
      result = await method();
    } catch (error) {
      if (error.isGrpcTokenExpiredError()) {
        _tokenExpiredBroadcaster.notifyRefreshStream(TokenExpiredEvent.expired);
      }
      rethrow;
    }

    return result;
  }
}
