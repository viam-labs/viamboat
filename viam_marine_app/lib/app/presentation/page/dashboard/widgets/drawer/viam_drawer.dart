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
            listener: (context, state) => state.maybeWhen(
              reloadApp: () => reloadApp(context),
              showConfirmationPopup: () => _showConfirmationPopup(context),
              orElse: () => null,
            ),
            builder: (context, state) => state.maybeWhen(
              loading: (boats) => ViamDrawerBody(
                boats: boats,
                isLoading: true,
              ),
              loaded: (boats) => ViamDrawerBody(
                boats: boats,
                isLoading: false,
              ),
              orElse: () => const SizedBox.shrink(),
            ),
          ),
        ),
      );

  void _showConfirmationPopup(BuildContext context) => showDialog(
        context: context,
        builder: (_) => ViamDialog(
          title: Strings.of(context).delete_boat_confirmation_popup_title,
          content: Strings.of(context).delete_boat_confirmation_popup_content,
          onConfirmTap: () {},
          onDismissTap: AutoRouter.of(context).pop,
        ),
      );

  Future<void> reloadApp(BuildContext context) async {
    await AutoRouter.of(context).replaceAll([const SplashRoute()]);
    await pushNewSessionScope();
  }
}
