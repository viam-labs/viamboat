import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/page/boat_list/body/boat_list_body.dart';
import 'package:viam_marine/app/presentation/page/boat_list/cubit/boat_list_cubit.dart';
import 'package:viam_marine/app/presentation/page/boat_list/cubit/boat_list_state.dart';
import 'package:viam_marine/app/presentation/routing/router.gr.dart';
import 'package:viam_marine/app/presentation/widgets/dialog/viam_dialog.dart';
import 'package:viam_marine/app/presentation/widgets/dialog/viam_dialog_with_text_field.dart';
import 'package:viam_marine/app/presentation/widgets/loading_indicator/app_loading_indicator.dart';

class BoatListPage extends StatelessWidget with ExtensionMixin {
  const BoatListPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<BoatListCubit>(
        create: (context) => getIt<BoatListCubit>()..init(),
        child: Scaffold(
          body: BlocConsumer<BoatListCubit, BoatListState>(
            listener: _listener,
            builder: _builder,
          ),
        ),
      );

  void _listener(
    BuildContext context,
    BoatListState state,
  ) =>
      state.maybeWhen(
        reloadApp: () => _reloadApp(context),
        showConfirmationPopup: (boatId) => _showConfirmationPopup(
          context,
          boatId,
        ),
        showEditBoatNamePopup: (boatName, boatId, error) => _showEditNamePopup(
          context,
          boatName,
          boatId,
          error.getErrorMessage(context),
        ),
        closeConfirmationPopup: () => _closePopup(context),
        orElse: () => null,
      );

  Widget _builder(
    BuildContext context,
    BoatListState state,
  ) =>
      state.maybeWhen(
        loading: (boats) => BoatListBody(
          boats: boats,
          isLoading: true,
        ),
        loaded: (boats, currentBoatId) => BoatListBody(
          boats: boats,
          currentBoatId: currentBoatId,
          isLoading: false,
        ),
        reloadApp: () => const Center(
          child: AppLoadingIndicator(),
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
          onConfirmTap: () => context.read<BoatListCubit>().deleteBoat(boatId),
          onDismissTap: AutoRouter.of(context).pop,
        ),
      );

  void _showEditNamePopup(
    BuildContext context,
    String boatName,
    String boatId,
    String? errorMessage,
  ) =>
      showDialog(
        context: context,
        builder: (_) => ViamDialogWithInput(
          errorMessage: errorMessage,
          title: Strings.of(context).change_boat_name_dialog_title,
          text: boatName,
          acceptButtonLabel: Strings.of(context).change_boat_name_dialog_accept_button_label,
          onConfirmTap: (newBoatName) => context.read<BoatListCubit>().updateBoatName(newBoatName, boatId),
          onDismissTap: AutoRouter.of(context).pop,
        ),
      );

  void _closePopup(BuildContext context) => AutoRouter.of(context).pop();

  Future<void> _reloadApp(BuildContext context) async {
    final router = AutoRouter.of(context);
    await pushNewSessionScope();

    await router.replaceAll([const SplashRoute()]);
  }
}
