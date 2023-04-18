import 'dart:async';

import 'package:fimber_io/fimber_io.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/analytics/usecase/log_open_app_event_use_case.dart';
import 'package:viam_marine/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/utils/crashlitics/diagnostics_zone.dart';
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

Future<void>? main() => runMobileApp(getEnvironment());

Future<void>? runMobileApp(final String environment) => runZonedGuarded<Future<void>>(
      () async {
        WidgetsFlutterBinding.ensureInitialized();
        await Firebase.initializeApp();
        await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
        FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

        await Hive.initFlutter();

        Hive.registerAdapter(ViamBoatAdapter());

        if (!_supportedEnvironments.contains(environment)) {
          throw ArgumentError('Environment $environment is not supported');
        }

        Fimber.plantTree(DiagnosticsLogTree());

        await configureDependencies(environment);
        unawaited(getIt<LogOpenAppEventUseCase>().call());

        runApp(ViamMarineApp(MainRouter(getIt<GlobalKey<NavigatorState>>())));
      },
      (err, st) async {
        await FirebaseCrashlytics.instance.recordError(
          err,
          st,
          fatal: true,
        );
      },
    );

String getEnvironment() {
  const baseEnvironment = String.fromEnvironment(_environmentDefineKey, defaultValue: Environment.prod);
  return baseEnvironment == _prodEnvironmentFullName ? Environment.prod : baseEnvironment;
}
