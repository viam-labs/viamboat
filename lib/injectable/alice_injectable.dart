import 'package:alice/alice.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/injectable/injectable.dart';

@module
abstract class AliceModule {
  @lazySingleton
  @dev
  Alice alice(GlobalKey<NavigatorState> navigatorKey) => Alice(
        navigatorKey: getIt<GlobalKey<NavigatorState>>(),
        showNotification: true,
        showInspectorOnShake: true,
      );
}
