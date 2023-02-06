import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/page/add_boat/body/add_boat_page_body.dart';
import 'package:viam_marine/app/presentation/page/add_boat/cubit/add_boat_cubit.dart';
import 'package:viam_marine/app/presentation/page/add_boat/cubit/add_boat_state.dart';
import 'package:viam_marine/app/presentation/routing/router.gr.dart';
import 'package:viam_marine/app/presentation/widgets/dialog/viam_dialog.dart';
import 'package:viam_marine/app/style/app_typography.dart';

class AddBoatPage extends StatelessWidget with AutoRouteWrapper, ExtensionMixin {
  final bool showWelcomeText;
  final String? errorMessage;
  final String? name;
  final String? address;
  final String? secret;

  const AddBoatPage({
    required this.showWelcomeText,
    this.errorMessage,
    this.name,
    this.address,
    this.secret,
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
        backgroundColor: context.getColors().transparent,
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
        error: (message) => _showError(context, message),
        showConfirmationPopup: () => _showConfirmationPopup(context),
        leavePage: () => _leavePage(context),
        navigateToScanQrPage: () => _navigateToScanQrPage(context),
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
          name: name,
          address: address,
          secret: secret,
          errorMessage: errorMessage,
        ),
        loading: (canProceed) => AddBoatPageBody(
          canProceed: canProceed,
          isLoading: true,
          showWelcomeText: showWelcomeText,
          name: name,
          address: address,
          secret: secret,
          errorMessage: errorMessage,
        ),
        orElse: () => const SizedBox.shrink(),
      );

  bool _listenWhen(
    AddBoatState _,
    AddBoatState current,
  ) =>
      current is! AddBoatStateLoaded && current is! AddBoatStateLoading;

  bool _buildWhen(
    AddBoatState _,
    AddBoatState current,
  ) =>
      current is AddBoatStateLoaded || current is AddBoatStateLoading;

  Future<void> _reloadApp(BuildContext context) async {
    final router = AutoRouter.of(context);
    await pushNewSessionScope();
    await router.replaceAll([const SplashRoute()]);
  }

  void _leavePage(BuildContext context) => AutoRouter.of(context).pop();

  void _showConfirmationPopup(BuildContext context) => showDialog(
        context: context,
        builder: (_) => ViamDialog(
          title: Strings.of(context).add_boat_confirmation_popup_title,
          content: Strings.of(context).add_boat_confirmation_popup_content,
          onConfirmTap: () {
            AutoRouter.of(context).pop();
            context.read<AddBoatCubit>().leavePage();
          },
          onDismissTap: AutoRouter.of(context).pop,
        ),
      );

  void _showError(
    BuildContext context,
    String? errorMessage,
  ) =>
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            errorMessage ?? Strings.of(context).add_boat_connection_error_msg,
            textAlign: TextAlign.center,
            style: AppTypography.body,
          ),
        ),
      );

  void _navigateToScanQrPage(BuildContext context) => AutoRouter.of(context).replace(
        ScanQrRoute(showWelcomeText: showWelcomeText),
      );
}
