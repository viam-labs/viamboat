import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/annotations.dart';
import 'package:viam_marine/data/get_api_url_use_case.dart';
import 'package:viam_marine/injectable/dio_injectable/dio_injectable.mocks.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/injectable/staging_environment.dart';

const timeout = Duration(seconds: 20);

@GenerateMocks([Dio])
@module
abstract class DioModule {
  @lazySingleton
  @dev
  @prod
  @staging
  Dio dio(GetApiUrlUseCase getApiUrlUseCase) {
    final dio = Dio(
      BaseOptions(
        connectTimeout: timeout.inMilliseconds,
        receiveTimeout: timeout.inMilliseconds,
        sendTimeout: timeout.inMilliseconds,
        baseUrl: getApiUrlUseCase.getApiUrl(),
      ),
    );

    const proxy = bool.hasEnvironment('DEBUG_PROXY_IP') ? String.fromEnvironment('DEBUG_PROXY_IP') : null;

    if (proxy != null) {
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client) {
        client.findProxy = (url) {
          return 'PROXY $proxy';
        };

        client.badCertificateCallback = (X509Certificate cert, String host, int port) => Platform.isAndroid;
        return null;
      };
    }

    return dio;
  }

  @singleton
  @test
  Dio testDio() => MockDio();
}
