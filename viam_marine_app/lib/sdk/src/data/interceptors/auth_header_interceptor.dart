import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:viam_marine/sdk/src/domain/auth/service/auth_service.dart';

class AuthHeaderInterceptor implements ClientInterceptor {
  final ViamAuthService _authService;
  final String? accessToken;

  const AuthHeaderInterceptor(
    this._authService,
    this.accessToken,
  );

  FutureOr<void> optionsProvider(Map<String, String> metadata, String uri) async {
    String token;

    if (accessToken != null) {
      token = accessToken!;
    } else {
      final authData = await _authService.getAuthData();
      token = authData.accessToken;
    }

    metadata['Authorization'] = "Bearer $token";
  }

  @override
  ResponseFuture<R> interceptUnary<Q, R>(
    ClientMethod<Q, R> method,
    Q request,
    CallOptions options,
    ClientUnaryInvoker<Q, R> invoker,
  ) {
    final opts = options.mergedWith(
      CallOptions(providers: [optionsProvider]),
    );

    return invoker(method, request, opts);
  }

  @override
  ResponseStream<R> interceptStreaming<Q, R>(
    ClientMethod<Q, R> method,
    Stream<Q> requests,
    CallOptions options,
    ClientStreamingInvoker<Q, R> invoker,
  ) {
    final opts = options.mergedWith(
      CallOptions(providers: [optionsProvider]),
    );

    return invoker(method, requests, opts);
  }
}
