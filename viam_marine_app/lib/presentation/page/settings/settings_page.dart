import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/domain/app_viam/model/robot_config.dart';
import 'package:viam_marine/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/settings/body/settings_loaded_body.dart';
import 'package:viam_marine/presentation/page/settings/cubit/settings_cubit.dart';
import 'package:viam_marine/presentation/page/settings/cubit/settings_page_state.dart';
import 'package:viam_marine/presentation/routing/router.gr.dart';
import 'package:viam_marine/presentation/widgets/dialog/viam_dialog.dart';

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
        showConfirmationPopup: () => _showConfirmationPopup(context),
        closeConfirmationPopup: () => closePopup(context),
        navigateToChangeBoatName: (boats, currentBoatId) =>
            _navigateToChangeBoatNamePage(context, boats, currentBoatId),
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

  void _showConfirmationPopup(BuildContext context) =>
      Platform.isIOS ? _showIosConfirmationDialog(context) : _showAndroidConfirmationDialog(context);

  void _showAndroidConfirmationDialog(BuildContext context) => showDialog(
        context: context,
        builder: (_) => ViamDialog(
          title: Strings.of(context).delete_boat_confirmation_popup_title,
          content: Strings.of(context).delete_boat_confirmation_popup_content,
          onConfirmTap: () => context.read<SettingsCubit>().deleteBoat(),
          onDismissTap: AutoRouter.of(context).pop,
        ),
      );

  void _showIosConfirmationDialog(BuildContext context) => showCupertinoModalPopup<void>(
        context: context,
        builder: (_) => CupertinoAlertDialog(
          title: Text(Strings.of(context).delete_boat_confirmation_popup_title),
          content: Text(Strings.of(context).delete_boat_confirmation_popup_content),
          actions: <CupertinoDialogAction>[
            CupertinoDialogAction(
              onPressed: AutoRouter.of(context).pop,
              child: Text(Strings.of(context).cancel),
            ),
            CupertinoDialogAction(
              isDestructiveAction: true,
              onPressed: () => context.read<SettingsCubit>().deleteBoat(),
              child: Text(Strings.of(context).remove),
            ),
          ],
        ),
      );

  void closePopup(BuildContext context) => AutoRouter.of(context).pop();

  Future<void> _reloadApp(BuildContext context) async {
    final router = AutoRouter.of(context);

    await router.replaceAll([const SplashRoute()]);
  }

  void _navigateToChangeBoatNamePage(
    BuildContext context,
    List<ViamBoat> boats,
    String? currentBoatId,
  ) =>
      AutoRouter.of(context).push(ChangeBoatNameRoute(
        boats: boats,
        currentBoatId: currentBoatId,
      ));
}
