import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/page/dashboard/cubit/dashboard_cubit.dart';
import 'package:viam_marine/app/presentation/page/sign_in/cubit/sign_in_cubit.dart';
import 'package:viam_marine/app/presentation/page/sign_in/cubit/sign_in_state.dart';
import 'package:viam_marine/app/presentation/routing/router.gr.dart';

class SignIn extends StatelessWidget with AutoRouteWrapper {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: BlocConsumer<SignInCubit, SignInState>(
            listener: (context, state) => state.maybeWhen(
                  goToDashboard: () => goTodashboard(context),
                  orElse: () => null,
                ),
            builder: (context, state) => state.maybeWhen(
                  loaded: () => Center(
                    child: ElevatedButton(
                      onPressed: context.read<SignInCubit>().setNewBoat,
                      child: Text('SignIn'),
                    ),
                  ),
                  orElse: () => const SizedBox.shrink(),
                )),
      );

  Future<void> goTodashboard(BuildContext context) async {
    await AutoRouter.of(context).replaceAll([const DashboardRoute()]);
    pushNewSessionScope();
  }

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider<SignInCubit>(
        create: (_) => getIt<SignInCubit>(),
        lazy: false,
        child: this,
      );
}
