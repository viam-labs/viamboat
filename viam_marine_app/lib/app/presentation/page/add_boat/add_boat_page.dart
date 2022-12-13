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
          listener: listener,
          builder: builder,
          buildWhen: (previous, current) => current is AddBoatStateLoaded || current is AddBoatStateLoading,
        ),
      );

  void listener(
    BuildContext context,
    AddBoatState state,
  ) =>
      state.maybeWhen(
        reloadApp: () => reloadApp(context),
        error: () => showError(context),
        orElse: () => null,
      );

  Widget builder(
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

  Future<void> reloadApp(BuildContext context) async {
    await AutoRouter.of(context).replaceAll([const SplashRoute()]);
    await pushNewSessionScope();
  }

  void showError(BuildContext context) => ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            Strings.of(context).add_boat_connection_error_msg,
            textAlign: TextAlign.center,
            style: AppTypography.body,
          ),
        ),
      );
}
