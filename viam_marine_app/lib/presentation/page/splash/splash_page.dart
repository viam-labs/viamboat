import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/splash/cubit/splash_cubit.dart';
import 'package:viam_marine/presentation/page/splash/cubit/splash_state.dart';
import 'package:viam_marine/presentation/routing/router.gr.dart';

class SplashPage extends StatefulWidget with AutoRouteWrapper {
  const SplashPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider<SplashCubit>(
        create: (_) => getIt<SplashCubit>()..init(),
        lazy: false,
        child: this,
      );

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Future<void> didChangeDependencies() async {
    super.didChangeDependencies();

    await Future.wait([
      precacheImage(
        ExactAssetImage(Assets.images.illustrations.boat.boat.path),
        context,
      ),
      precacheImage(
        ExactAssetImage(Assets.images.illustrations.splash.splash.path),
        context,
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: BlocConsumer<SplashCubit, SplashState>(
          buildWhen: (_, state) => state is SplashStateLoading,
          listenWhen: (_, state) => state is SplashStateGoToAddBoat || state is SplashStateGoToSelectRobot,
          builder: _builder,
          listener: _listener,
        ),
      );

  Widget _builder(
    BuildContext context,
    SplashState state,
  ) =>
      state.maybeWhen(
        loading: () => SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            Assets.images.illustrations.splash.splash.path,
            fit: BoxFit.cover,
          ),
        ),
        orElse: () => const SizedBox.shrink(),
      );

  void _listener(
    BuildContext context,
    SplashState state,
  ) =>
      state.maybeWhen(
        goToAddBoat: () => _goToAddBoat(context),
        goToSelectRobot: () => _goToSelectRobot(context),
        orElse: () => const SizedBox.shrink(),
      );

  void _goToAddBoat(BuildContext context) => AutoRouter.of(context).replaceAll([const LoginRoute()]);

  void _goToSelectRobot(BuildContext context) => AutoRouter.of(context).replaceAll([const SelectRobotRoute()]);
}
