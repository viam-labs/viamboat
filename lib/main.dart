import 'dart:async';

import 'package:fimber_io/fimber_io.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/viam_marine_app.dart';
import 'package:viam_marine/presentation/routing/router.gr.dart';
import 'package:viam_marine/injectable/staging_environment.dart';

const String _environmentDefineKey = 'ENVIRONMENT';
const String _prodEnvironmentFullName = 'production';

const _supportedEnvironments = [
  Environment.prod, 
  Environment.dev, 
  StagingEnvironment.staging,
];

Future<void>? main() => runMobileApp(_getEnvironment());

Future<void>? runMobileApp(final String environment) => runZonedGuarded<Future<void>>(() async {
      WidgetsFlutterBinding.ensureInitialized();
      // await Firebase.initializeApp();
      // FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
      if (!_supportedEnvironments.contains(environment)) {
        throw ArgumentError('Environment $environment is not supported');
      }
      if (environment != Environment.test && environment != Environment.prod) {
        Fimber.plantTree(DebugTree(useColors: true));
      }
      configureDependencies(environment);
      runApp(ViamMarineApp(MainRouter(getIt<GlobalKey<NavigatorState>>())));
    }, (err, st) {

    },
);

String _getEnvironment() {
  const baseEnvironment = String.fromEnvironment(_environmentDefineKey, defaultValue: Environment.prod);
  return baseEnvironment == _prodEnvironmentFullName ? Environment.prod : baseEnvironment;
}