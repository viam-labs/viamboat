import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/page/add_boat/body/add_boat_page_body.dart';
import 'package:viam_marine/app/presentation/page/add_boat/cubit/add_boat_cubit.dart';
import 'package:viam_marine/app/presentation/page/add_boat/cubit/add_boat_state.dart';
import 'package:viam_marine/app/presentation/routing/router.gr.dart';

class AddBoatPage extends StatelessWidget with AutoRouteWrapper {
  const AddBoatPage({super.key});

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
        goToDashboard: () => goToDashboard(context),
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
        ),
        loading: (canProceed) => AddBoatPageBody(
          canProceed: canProceed,
          isLoading: true,
        ),
        orElse: () => const SizedBox.shrink(),
      );

  Future<void> goToDashboard(BuildContext context) async {
    await AutoRouter.of(context).replaceAll([const DashboardRoute()]);
    await pushNewSessionScope();
  }

  void showError(BuildContext context) => ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Connection Error'),
        ),
      );
}
