import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/page/dashboard/widgets/drawer/body/viam_drawer_body.dart';
import 'package:viam_marine/app/presentation/page/dashboard/widgets/drawer/cubit/viam_drawer_cubit.dart';
import 'package:viam_marine/app/presentation/page/dashboard/widgets/drawer/cubit/viam_drawer_state.dart';
import 'package:viam_marine/app/presentation/routing/router.gr.dart';
import 'package:viam_marine/app/presentation/widgets/dialog/viam_dialog.dart';

class ViamDrawer extends StatelessWidget with ExtensionMixin {
  const ViamDrawer({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<ViamDrawerCubit>(
        create: (context) => getIt<ViamDrawerCubit>()..init(),
        child: Drawer(
          backgroundColor: context.getColors().mainGrey80,
          child: BlocConsumer<ViamDrawerCubit, ViamDrawerState>(
            listener: _listener,
            builder: _builder,
          ),
        ),
      );

  void _listener(
    BuildContext context,
    ViamDrawerState state,
  ) =>
      state.maybeWhen(
        reloadApp: () => _reloadApp(context),
        showConfirmationPopup: (boatId) => _showConfirmationPopup(
          context,
          boatId,
        ),
        closeConfirmationPopup: () => closePopup(context),
        orElse: () => null,
      );

  Widget _builder(
    BuildContext context,
    ViamDrawerState state,
  ) =>
      state.maybeWhen(
        loading: (boats) => ViamDrawerBody(
          boats: boats,
          isLoading: true,
        ),
        loaded: (boats) => ViamDrawerBody(
          boats: boats,
          isLoading: false,
        ),
        orElse: () => const SizedBox.shrink(),
      );

  void _showConfirmationPopup(
    BuildContext context,
    String boatId,
  ) =>
      showDialog(
        context: context,
        builder: (_) => ViamDialog(
          title: Strings.of(context).delete_boat_confirmation_popup_title,
          content: Strings.of(context).delete_boat_confirmation_popup_content,
          onConfirmTap: () => context.read<ViamDrawerCubit>().deleteBoat(boatId),
          onDismissTap: AutoRouter.of(context).pop,
        ),
      );

  void closePopup(BuildContext context) => AutoRouter.of(context).pop();

  Future<void> _reloadApp(BuildContext context) async {
    await AutoRouter.of(context).replaceAll([const SplashRoute()]);
    await pushNewSessionScope();
  }
}
