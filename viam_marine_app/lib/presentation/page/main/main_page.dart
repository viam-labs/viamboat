import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/main/body/main_page_body.dart';
import 'package:viam_marine/presentation/page/main/cubit/main_cubit.dart';
import 'package:viam_marine/presentation/page/main/cubit/main_state.dart';
import 'package:viam_marine/presentation/routing/router.gr.dart';
import 'package:viam_marine/presentation/widgets/loading_indicator/app_loading_indicator.dart';
import 'package:viam_marine/utils/ignore_else_state.dart';

class MainPage extends StatelessWidget with AutoRouteWrapper {
  final ViamAppRobot robot;

  const MainPage({
    super.key,
    required this.robot,
  });

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => getIt<MainCubit>()..init(),
        child: this,
      );

  @override
  Widget build(BuildContext context) => BlocConsumer<MainCubit, MainState>(
        buildWhen: (_, state) => state is! MainStateGoToSelectRobotPage && state is! MainStateLogout,
        listenWhen: (_, state) => state is MainStateGoToSelectRobotPage || state is MainStateLogout,
        listener: _listener,
        builder: (context, state) => state.maybeWhen(
          loading: () => const AppLoadingIndicator(),
          loaded: (sensors, movementSensors, cameraSensors) => MainPageBody(
            sensors: sensors,
            movementSensors: movementSensors,
            cameraSensors: cameraSensors,
            robot: robot,
          ),
          orElse: SizedBox.shrink,
        ),
      );

  void _listener(BuildContext context, MainState state) => state.maybeWhen(
        goToSelectRobotPage: () => AutoRouter.of(context).replaceAll(
          [const SelectRobotRoute()],
        ),
        logout: () => AutoRouter.of(context).replaceAll(
          [const SplashRoute()],
        ),
        orElse: doNothing,
      );
}
