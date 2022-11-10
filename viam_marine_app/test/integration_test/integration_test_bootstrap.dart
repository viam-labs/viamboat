import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:viam_marine/app/viam_marine_app.dart';

class _TestBootstrap extends StatelessWidget {
  final RootStackRouter router;

  const _TestBootstrap(this.router);

  @override
  Widget build(BuildContext context) => ViamMarineApp(router);
}

extension Bootstrap on WidgetTester {
  Future<void> booStrapTest(RootStackRouter router) async {
    await pumpWidget(_TestBootstrap(router));
    await pumpAndSettle();
  }

  Future<void> booStrapTestPumpFramesAnimation(RootStackRouter router) async {
    await pumpWidget(_TestBootstrap(router));
    for (int i = 0; i < 10; i++) {
      await pump(const Duration(seconds: 1));
    }
  }
}

class IntegrationTestInitialPage extends StatelessWidget {
  const IntegrationTestInitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => throw UnimplementedError();
}