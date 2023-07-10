import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/domain/app_viam/model/robot_config.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/main/body/main_page_body.dart';
import 'package:viam_marine/presentation/page/main/body/main_page_error_body.dart';
import 'package:viam_marine/presentation/page/main/body/main_page_loading_body.dart';
import 'package:viam_marine/presentation/page/main/cubit/main_cubit.dart';
import 'package:viam_marine/presentation/page/main/cubit/main_state.dart';
import 'package:viam_marine/presentation/routing/router.gr.dart';
import 'package:viam_marine/utils/ignore_else_state.dart';

@RoutePage()
class MainPage extends StatelessWidget with AutoRouteWrapper {
  final RobotConfig robotConfig;

  const MainPage({
    super.key,
    required this.robotConfig,
  });

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => getIt<MainCubit>()..init(robotConfig),
        child: this,
      );

  @override
  Widget build(BuildContext context) => BlocConsumer<MainCubit, MainState>(
        buildWhen: _buildWhen,
        listenWhen: _listenWhen,
        listener: _listener,
        builder: _builder,
      );

  Widget _builder(BuildContext context, MainState state) => state.maybeWhen(
        error: (_) => const MainPageErrorBody(),
        loading: () => const MainPageLoadingBody(),
        loaded: (
          config,
          sensors,
          movementSensors,
          cameraSensors,
          analyticsNames,
        ) =>
            MainPageBody(
          sensors: sensors,
          movementSensors: movementSensors,
          cameraSensors: cameraSensors,
          robotConfig: config,
          analyticsSensorNames: analyticsNames,
        ),
        orElse: SizedBox.shrink,
      );

  void _listener(BuildContext context, MainState state) => state.maybeWhen(
        logout: () => AutoRouter.of(context).replaceAll([const SplashRoute()]),
        orElse: doNothing,
      );

  bool _buildWhen(_, MainState current) => current is! MainStateLogout;

  bool _listenWhen(_, MainState current) => current is MainStateLogout;
}
