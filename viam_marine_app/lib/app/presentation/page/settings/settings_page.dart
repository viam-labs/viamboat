import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/page/settings/body/settings_loaded_body.dart';
import 'package:viam_marine/app/presentation/page/settings/cubit/settings_cubit.dart';
import 'package:viam_marine/app/presentation/page/settings/cubit/settings_page_state.dart';
import 'package:viam_marine/app/presentation/routing/router.gr.dart';
import 'package:viam_marine/app/presentation/widgets/dialog/viam_dialog.dart';

class SettingsPage extends StatelessWidget with ExtensionMixin {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<SettingsCubit>(
        create: (context) => getIt<SettingsCubit>()..init(),
        child: BlocConsumer<SettingsCubit, SettingsPageState>(
          listener: _listener,
          builder: _builder,
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
        orElse: () => null,
      );

  Widget _builder(
    BuildContext context,
    SettingsPageState state,
  ) =>
      state.maybeWhen(
        loading: (boat) => SettingsLoadedBody(
          boat: boat,
          isLoading: true,
        ),
        loaded: (boat) => SettingsLoadedBody(
          boat: boat,
          isLoading: false,
        ),
        reloadApp: () => const SettingsLoadedBody(isLoading: true),
        orElse: () => const SizedBox.shrink(),
      );

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
        builder: (BuildContext context) => CupertinoAlertDialog(
          title: Text(Strings.of(context).delete_boat_confirmation_popup_title),
          content: Text(Strings.of(context).delete_boat_confirmation_popup_content),
          actions: <CupertinoDialogAction>[
            CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: AutoRouter.of(context).pop,
              child: Text(Strings.of(context).no),
            ),
            CupertinoDialogAction(
              isDestructiveAction: true,
              onPressed: () => context.read<SettingsCubit>().deleteBoat(),
              child: Text(Strings.of(context).yes),
            ),
          ],
        ),
      );

  void closePopup(BuildContext context) => AutoRouter.of(context).pop();

  Future<void> _reloadApp(BuildContext context) async {
    final router = AutoRouter.of(context);
    await pushNewSessionScope();

    await router.replaceAll([const SplashRoute()]);
  }
}
