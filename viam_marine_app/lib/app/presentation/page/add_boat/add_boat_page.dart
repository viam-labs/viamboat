import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/generated/assets.gen.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
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
          listener: (context, state) => state.maybeWhen(
            goToDashboard: () => goToDashboard(context),
            orElse: () => null,
          ),
          builder: (context, state) => state.maybeWhen(
            loaded: () => Column(
              children: [
                Expanded(
                  child: Assets.images.illustrations.background.image(fit: BoxFit.cover),
                ),
              ],
            ),
            orElse: () => const SizedBox.shrink(),
          ),
        ),
      );

  Future<void> goToDashboard(BuildContext context) async {
    await AutoRouter.of(context).replaceAll([const DashboardRoute()]);
    await pushNewSessionScope();
  }
}
