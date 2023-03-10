import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/page/main/body/main_page_body.dart';
import 'package:viam_marine/app/presentation/page/main/cubit/main_cubit.dart';
import 'package:viam_marine/app/presentation/page/main/cubit/main_state.dart';
import 'package:viam_marine/app/presentation/widgets/loading_indicator/app_loading_indicator.dart';

class MainPage extends StatelessWidget with AutoRouteWrapper {
  final String robotName;

  const MainPage({
    super.key,
    required this.robotName,
  });

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => getIt<MainCubit>()..init(),
        child: this,
      );

  @override
  Widget build(BuildContext context) => BlocBuilder<MainCubit, MainState>(
        builder: (context, state) => state.maybeWhen(
          loading: () => const AppLoadingIndicator(),
          loaded: (sensors, movementSensors, cameraSensors) => MainPageBody(
            sensors: sensors,
            movementSensors: movementSensors,
            cameraSensors: cameraSensors,
            robotName: robotName,
          ),
          orElse: SizedBox.shrink,
        ),
      );
}
