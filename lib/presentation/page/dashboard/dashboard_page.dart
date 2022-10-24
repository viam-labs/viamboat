import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/dashboard/cubit/dashboard_cubit.dart';

import 'widgets/sensor_tile/sensor_tile.dart';

class DashboardPage extends StatelessWidget with AutoRouteWrapper {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<DashboardCubit>(
      create: (_) {
        return getIt<DashboardCubit>()..init();
      },
      lazy: false,
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            Strings.of(context).app_name,
            style: AppTypography.title,
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                  child: Wrap(
                children: List.generate(
                  6,
                  (index) => const SensorTile(),
                ),
              )),
              const Expanded(
                child: Center(
                  child: Text('GPS Section'),
                ),
              ),
              const Expanded(
                child: Center(
                  child: Text('Camera Section'),
                ),
              ),
            ],
          ),
        ),
      );
}
