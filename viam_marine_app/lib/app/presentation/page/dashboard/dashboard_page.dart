import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/presentation/page/dashboard/body/dashboard_page_body.dart';
import 'package:viam_marine/app/presentation/page/dashboard/cubit/dashboard_state.dart';
import 'package:viam_marine/app/presentation/page/dashboard/widgets/dashboard_error.dart';
import 'package:viam_marine/app/presentation/widgets/loading_indicator/app_loading_indicator.dart';
import 'package:viam_marine/app/style/app_typography.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/page/dashboard/cubit/dashboard_cubit.dart';

import 'widgets/drawer/viam_drawer.dart';

class DashboardPage extends StatelessWidget with AutoRouteWrapper {
  const DashboardPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider<DashboardCubit>(
        create: (_) => getIt<DashboardCubit>()..init(),
        lazy: false,
        child: this,
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            Strings.of(context).app_name,
            style: AppTypography.title,
          ),
        ),
        drawer: const ViamDrawer(),
        body: SafeArea(
          child: BlocBuilder<DashboardCubit, DashboardState>(
            builder: (context, state) => state.maybeWhen(
              loading: () => const AppLoadingIndicator(),
              loaded: (sensors, positionSensors) => DashboardPageBody(
                sensors: sensors,
                positionSensors: positionSensors,
              ),
              orElse: () => const SizedBox.shrink(),
              error: (_) => const DashboardError(),
            ),
          ),
        ),
      );
}
