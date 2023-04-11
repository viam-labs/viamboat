import 'dart:async';

import 'package:viam_marine/data/service_base/broadcaster/token_expired_broadcaster_impl.dart';
import 'package:viam_marine/domain/service_base/broadcaster/token_expired_broadcaster.dart';
import 'package:viam_marine/extensions/object_extension.dart';

abstract class ServiceBase extends TokenExpiredBroadcasterImpl {
  FutureOr<T> call<T>(FutureOr<T> Function() method) async {
    T result;
    try {
      result = await method();
    } catch (error) {
      if (error.isGrpcTokenExpiredError()) {
        notifyRefreshStream(TokenExpiredEvent.expired);
      }
      rethrow;
    }

    return result;
  }
}
