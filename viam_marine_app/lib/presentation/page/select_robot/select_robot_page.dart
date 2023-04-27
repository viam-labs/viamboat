import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/select_robot/cubit/select_robot_cubit.dart';

class SelectRobotPage extends StatelessWidget with AutoRouteWrapper {
  const SelectRobotPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => getIt<SelectRobotCubit>(),
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
