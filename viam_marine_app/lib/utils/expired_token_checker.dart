import 'dart:async';

import 'package:viam_marine/domain/service_base/broadcaster/token_expired_broadcaster.dart';
import 'package:viam_marine/extensions/object_extension.dart';

abstract class ExpiredTokenChecker {
  final TokenExpiredBroadcaster _tokenExpiredBroadcaster;

  const ExpiredTokenChecker(this._tokenExpiredBroadcaster);

  FutureOr<void> checkExpiredToken(FutureOr<void> Function() methodCall) async {
    try {
      await methodCall();
    } catch (error) {
      if (error.isGrpcTokenExpiredError()) {
        _tokenExpiredBroadcaster.notifyRefreshStream(TokenExpiredEvent.expired);
      }
      rethrow;
    }
  }
}
