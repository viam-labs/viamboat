import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/presentation/page/select_robot/select_robot_page.dart';
import 'package:viam_marine/presentation/routing/router.gr.dart';
import 'package:viam_marine/style/dimens.dart';

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

  PreferredSizeWidget? _buildAppBar(BuildContext context) => showAppBar
      ? AppBar(
          elevation: 0,
          backgroundColor: context.getColors().transparent,
          centerTitle: true,
          leading: Builder(
            builder: (context) => GestureDetector(
              onTap: () => context.router.navigate(SelectRobotRoute(isAutoConnectOn: false)),
              child: Container(
                padding: const EdgeInsets.all(Dimens.xm + Dimens.xxs),
                child: Assets.images.svg.icons.boatList.svg(),
              ),
            ),
          ),
        )
      : null;
}
