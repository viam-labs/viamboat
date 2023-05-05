import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:viam_marine/domain/app_viam/model/robot_config.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/presentation/page/dashboard/body/dashboard_page_body.dart';
import 'package:viam_marine/presentation/page/dashboard/cubit/dashboard_state.dart';
import 'package:viam_marine/presentation/page/dashboard/widgets/dashboard_error.dart';
import 'package:viam_marine/presentation/page/dashboard/widgets/dashboard_scaffold_wrapper.dart';
import 'package:viam_marine/presentation/widgets/loading_indicator/app_loading_indicator.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/dashboard/cubit/dashboard_cubit.dart';

class DashboardPage extends StatelessWidget with AutoRouteWrapper {
  final List<ViamAppResourceName> sensors;
  final RobotConfig robotConfig;

  const DashboardPage({
    required this.sensors,
    required this.robotConfig,
    super.key,
  });

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider<DashboardCubit>(
        create: (_) => getIt<DashboardCubit>()..init(robotConfig.name),
        lazy: false,
        child: this,
      );

  @override
  Widget build(BuildContext context) => BlocBuilder<DashboardCubit, DashboardState>(
        builder: _builder,
      );

  Widget _builder(BuildContext context, DashboardState state) => state.maybeWhen(
        loading: () => const DashboardScaffoldWrapper(
          body: AppLoadingIndicator(),
          showAppBar: false,
        ),
        loaded: (boatName) => DashboardScaffoldWrapper(
          showAppBar: true,
          body: DashboardPageBody(
            boatName: boatName,
            sensors: sensors,
          ),
        ),
        orElse: SizedBox.shrink,
        error: (_) => const DashboardError(),
      );
}
