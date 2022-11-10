import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NavigatorKeyModule {
  @singleton
  GlobalKey<NavigatorState> navigatorKey() => GlobalKey<NavigatorState>();
}
