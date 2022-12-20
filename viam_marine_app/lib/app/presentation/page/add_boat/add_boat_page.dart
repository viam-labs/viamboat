import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/page/add_boat/body/add_boat_page_body.dart';
import 'package:viam_marine/app/presentation/page/add_boat/cubit/add_boat_cubit.dart';
import 'package:viam_marine/app/presentation/page/add_boat/cubit/add_boat_state.dart';
import 'package:viam_marine/app/presentation/page/add_boat/widget/confirmation_button.dart';
import 'package:viam_marine/app/presentation/routing/router.gr.dart';
import 'package:viam_marine/app/style/app_typography.dart';

class AddBoatPage extends StatelessWidget with AutoRouteWrapper, ExtensionMixin {
  final bool showWelcomeText;

  const AddBoatPage({
    required this.showWelcomeText,
    super.key,
  });

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider<AddBoatCubit>(
        create: (_) => getIt<AddBoatCubit>(),
        lazy: false,
        child: this,
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        body: BlocConsumer<AddBoatCubit, AddBoatState>(
          listener: _listener,
          builder: _builder,
          listenWhen: _listenWhen,
          buildWhen: _buildWhen,
        ),
      );

  void _listener(
    BuildContext context,
    AddBoatState state,
  ) =>
      state.maybeWhen(
        reloadApp: () => _reloadApp(context),
        error: () => _showError(context),
        showConfirmationPopup: () => _showConfirmationPopup(context),
        leavePage: () => _leavePage(context),
        orElse: () => null,
      );

  Widget _builder(
    BuildContext context,
    AddBoatState state,
  ) =>
      state.maybeWhen(
        loaded: (canProceed) => AddBoatPageBody(
          canProceed: canProceed,
          isLoading: false,
          showWelcomeText: showWelcomeText,
        ),
        loading: (canProceed) => AddBoatPageBody(
          canProceed: canProceed,
          isLoading: true,
          showWelcomeText: showWelcomeText,
        ),
        orElse: () => const SizedBox.shrink(),
      );

  bool _listenWhen(
    AddBoatState previous,
    AddBoatState current,
  ) =>
      current is AddBoatStateReloadApp ||
      current is AddBoatStateError ||
      current is AddBoatStateShowConfirmationPopup ||
      current is AddBoatStateLeavePage;

  bool _buildWhen(
    AddBoatState previous,
    AddBoatState current,
  ) =>
      current is AddBoatStateLoaded || current is AddBoatStateLoading;

  Future<void> _reloadApp(BuildContext context) async {
    await AutoRouter.of(context).replaceAll([const SplashRoute()]);
    await pushNewSessionScope();
  }

  void _leavePage(BuildContext context) => AutoRouter.of(context).pop();

  void _showConfirmationPopup(BuildContext context) => showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text(
            Strings.of(context).add_boat_confirmation_popup_title,
            textAlign: TextAlign.center,
            style: AppTypography.body.copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          content: Text(
            Strings.of(context).add_boat_confirmation_popup_content,
            textAlign: TextAlign.center,
            style: AppTypography.body.copyWith(
              color: Colors.black,
            ),
          ),
          actions: [
            ConfirmationButton(
              title: Strings.of(context).yes,
              onTap: () {
                AutoRouter.of(context).pop();
                context.read<AddBoatCubit>().leavePage();
              },
            ),
            ConfirmationButton(
              title: Strings.of(context).no,
              onTap: () {
                AutoRouter.of(context).pop();
              },
            ),
          ],
        ),
      );

  void _showError(BuildContext context) => ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            Strings.of(context).add_boat_connection_error_msg,
            textAlign: TextAlign.center,
            style: AppTypography.body,
          ),
        ),
      );
}
