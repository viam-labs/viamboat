import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/page/locations/cubit/locations_page_cubit.dart';
import 'package:viam_marine/app/presentation/page/locations/cubit/locations_page_state.dart';
import 'package:viam_marine/app/presentation/routing/router.gr.dart';
import 'package:viam_marine/app/presentation/widgets/loading_indicator/app_loading_indicator.dart';

class LocationsPage extends StatelessWidget with AutoRouteWrapper {
  final String organizationId;

  const LocationsPage({
    super.key,
    required this.organizationId,
  });

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<LocationsPageCubit>()..init(organizationId),
        child: this,
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: BlocConsumer<LocationsPageCubit, LocationsPageState>(
            builder: (context, state) => state.maybeWhen(
              loading: AppLoadingIndicator.new,
              loaded: (robots, locations) => ListView.builder(
                itemBuilder: (context, index1) => Column(
                  children: [
                    Text(locations[index1].name),
                    RobotList(
                        robots:
                            robots.where((element) => element.location == locations[index1].id).toList(growable: false))
                  ],
                ),
                itemCount: locations.length,
                shrinkWrap: true,
              ),
              orElse: SizedBox.shrink,
            ),
            listener: (context, state) => state.maybeWhen(
              goToMainPage: (robot) => AutoRouter.of(context).replaceAll([MainRoute(robot: robot)]),
              connectionError: (robot, secret) => AutoRouter.of(context).navigate(
                ConnectionErrorRoute(robot: robot, secret: secret),
              ),
              orElse: SizedBox.shrink,
            ),
          ),
        ),
      );
}

class RobotList extends StatelessWidget {
  final List<ViamAppRobot> robots;
  const RobotList({
    super.key,
    required this.robots,
  });

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => context.read<LocationsPageCubit>().onTap(robots[index]),
          child: Text(robots[index].name),
        ),
        itemCount: robots.length,
        shrinkWrap: true,
      );
}
