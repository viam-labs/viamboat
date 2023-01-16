import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/annotations.dart';
import 'package:viam_marine/app/injectable/staging_environment.dart';

import 'analytics_injectable.mocks.dart';

@GenerateMocks([FirebaseAnalytics])
@module
abstract class FirebaseAnalyticsModule {
  @lazySingleton
  @dev
  @prod
  @staging
  FirebaseAnalytics get instance => FirebaseAnalytics.instance;

  @singleton
  @test
  FirebaseAnalytics get testInstance => MockFirebaseAnalytics();
}
