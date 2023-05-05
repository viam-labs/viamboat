import 'package:flutter/material.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';

class DashboardScaffoldWrapper extends StatelessWidget with ExtensionMixin {
  final Widget body;
  final bool showAppBar;

  const DashboardScaffoldWrapper({
    super.key,
    required this.body,
    required this.showAppBar,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(context),
        body: SafeArea(
          top: false,
          child: body,
        ),
      );

//TODO: Add ability to switch between robots
  PreferredSizeWidget? _buildAppBar(BuildContext context) => showAppBar
      ? AppBar(
          elevation: 0,
          backgroundColor: context.getColors().transparent,
          centerTitle: true,
        )
      : null;
}
