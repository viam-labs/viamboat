import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/page/organizations/widgets/robots/cubit/robots_cubit.dart';
import 'package:viam_marine/app/presentation/page/organizations/widgets/robots/cubit/robots_state.dart';
import 'package:viam_marine/app/presentation/widgets/loading_indicator/app_loading_indicator.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

class RobotsListWidget extends StatelessWidget {
  final String? locationId;

  const RobotsListWidget({
    super.key,
    required this.locationId,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => getIt<RobotsCubit>()..init(locationId),
        child: BlocBuilder<RobotsCubit, RobotsState>(
          builder: (context, state) => state.maybeWhen(
            loaded: (robots) => ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => _RobotTile(robots[index]),
              itemCount: robots.length,
            ),
            loading: () => const AppLoadingIndicator(),
            orElse: SizedBox.shrink,
          ),
        ),
      );
}

class _RobotTile extends StatelessWidget with ExtensionMixin {
  final ViamAppRobot robot;

  const _RobotTile(this.robot);

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(Dimens.s),
        margin: const EdgeInsets.symmetric(
          horizontal: Dimens.m,
          vertical: Dimens.s,
        ),
        decoration: BoxDecoration(
          color: context.getColors().mainWhite,
          borderRadius: BorderRadius.circular(Dimens.s),
          boxShadow: [
            BoxShadow(
              color: context.getColors().shadow,
              blurRadius: 24,
              spreadRadius: 3,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Text(
          robot.name,
          style: AppTypography.newBody,
        ),
      );
}
