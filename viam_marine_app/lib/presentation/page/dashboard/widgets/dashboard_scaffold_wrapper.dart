import 'package:flutter/material.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/style/dimens.dart';

class DashboardScaffoldWrapper extends StatelessWidget with ExtensionMixin {
  final Widget body;
  final bool showAppBar;

  const DashboardScaffoldWrapper({
    required this.body,
    required this.showAppBar,
    super.key,
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
          leading: Builder(
            builder: (context) => GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(Dimens.xm + Dimens.xxs),
                child: Assets.images.svg.icons.boatList.svg(),
              ),
            ),
          ),
          elevation: 0,
          backgroundColor: context.getColors().transparent,
          centerTitle: true,
        )
      : null;
}
