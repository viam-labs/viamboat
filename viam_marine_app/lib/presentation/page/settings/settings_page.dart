import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/domain/app_viam/model/robot_config.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/settings/body/settings_loaded_body.dart';
import 'package:viam_marine/presentation/page/settings/cubit/settings_cubit.dart';
import 'package:viam_marine/presentation/page/settings/cubit/settings_page_state.dart';
import 'package:viam_marine/presentation/routing/router.gr.dart';

class SettingsPage extends StatelessWidget with ExtensionMixin {
  final RobotConfig robotConfig;

  const SettingsPage({
    super.key,
    required this.robotConfig,
  });

  @override
  Widget build(BuildContext context) => BlocProvider<SettingsCubit>(
        create: (context) => getIt<SettingsCubit>()..init(robotConfig.id),
        child: BlocConsumer<SettingsCubit, SettingsPageState>(
          listener: _listener,
          builder: _builder,
          listenWhen: _listenWhen,
          buildWhen: _buildWhen,
        ),
      );

  void _listener(
    BuildContext context,
    SettingsPageState state,
  ) =>
      state.maybeWhen(
        reloadApp: () => _reloadApp(context),
        orElse: () => null,
      );

  bool _listenWhen(SettingsPageState _, SettingsPageState current) =>
      current is! SettingsPageStateLoaded && current is! SettingsPageStateLoading;

  Widget _builder(
    BuildContext context,
    SettingsPageState state,
  ) =>
      state.maybeWhen(
        loading: (boat) => SettingsLoadedBody(
          boat: boat,
          isLoading: true,
          boatName: robotConfig.name,
        ),
        loaded: (boat) => SettingsLoadedBody(
          boat: boat,
          isLoading: false,
          boatName: robotConfig.name,
        ),
        reloadApp: () => SettingsLoadedBody(
          isLoading: true,
          boatName: robotConfig.name,
        ),
        orElse: () => const SizedBox.shrink(),
      );

  bool _buildWhen(SettingsPageState _, SettingsPageState current) =>
      current is SettingsPageStateLoaded ||
      current is SettingsPageStateLoading ||
      current is SettingsPageStateReloadApp;

  Future<void> _reloadApp(BuildContext context) async => AutoRouter.of(context).replaceAll([const SplashRoute()]);
}
