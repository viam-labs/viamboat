import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:viam_marine/app/presentation/page/dashboard/body/dashboard_page_body.dart';
import 'package:viam_marine/app/presentation/page/dashboard/cubit/dashboard_state.dart';
import 'package:viam_marine/app/presentation/page/dashboard/widgets/dashboard_error.dart';
import 'package:viam_marine/app/presentation/page/dashboard/widgets/dashboard_scaffold_wrapper.dart';
import 'package:viam_marine/app/presentation/widgets/loading_indicator/app_loading_indicator.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/page/dashboard/cubit/dashboard_cubit.dart';

class DashboardPage extends StatelessWidget with AutoRouteWrapper {
  const DashboardPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider<DashboardCubit>(
        create: (_) => getIt<DashboardCubit>()..init(),
        lazy: false,
        child: this,
      );

  @override
  Widget build(BuildContext context) => BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, state) => state.maybeWhen(
          loading: () => const DashboardScaffoldWrapper(
            body: AppLoadingIndicator(),
            showAppBar: false,
          ),
          loaded: (
            graphicalSensors,
            normalSensors,
            positionSensors,
            cameraSensors,
            boatName,
          ) =>
              DashboardScaffoldWrapper(
            showAppBar: true,
            body: DashboardPageBody(
              graphicalSensors: graphicalSensors,
              normalSensors: normalSensors,
              positionSensors: positionSensors,
              cameraSensors: cameraSensors,
            ),
          ),
          orElse: SizedBox.shrink,
          error: (_) => const DashboardError(),
        ),
      );
}
