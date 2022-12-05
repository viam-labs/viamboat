import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/page/splash/cubit/splash_cubit.dart';
import 'package:viam_marine/app/presentation/page/splash/cubit/splash_state.dart';
import 'package:viam_marine/app/presentation/routing/router.gr.dart';

class SplashPage extends StatelessWidget with AutoRouteWrapper {
  const SplashPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider<SplashCubit>(
        create: (_) => getIt<SplashCubit>()..init(),
        lazy: false,
        child: this,
      );

  @override
  Widget build(BuildContext context) => BlocConsumer<SplashCubit, SplashState>(
        builder: (context, state) => state.maybeWhen(
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          orElse: () => const SizedBox.shrink(),
        ),
        listener: (context, state) => state.maybeWhen(
          goToAddBoat: () => goToAddBoat(context),
          goToDashboard: () => goToDashboard(context),
          orElse: () => const SizedBox.shrink(),
        ),
      );

  void goToAddBoat(BuildContext context) => AutoRouter.of(context).replaceAll([const AddBoatRoute()]);

  void goToDashboard(BuildContext context) => AutoRouter.of(context).replaceAll([const DashboardRoute()]);
}
