import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/domain/app_viam/model/robot_config.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/presentation/page/main/cubit/main_cubit.dart';
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
          leading: GestureDetector(
            onTap: () => _onBoatListButtonTap(context),
            child: Container(
              padding: const EdgeInsets.all(Dimens.xm + Dimens.xxs),
              child: Assets.images.svg.icons.boatList.svg(),
            ),
          ),
        )
      : null;

  Future<void> _onBoatListButtonTap(BuildContext context) async {
    final cubit = context.read<MainCubit>();
    final config = await context.router.push(SelectRobotRoute(isAutoConnectOn: false));

    if (config != null && config is RobotConfig) {
      await cubit.init(config);
    }
  }
}
