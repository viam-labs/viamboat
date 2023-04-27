import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_location.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_organization.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/locations/widgets/robot_list.dart';
import 'package:viam_marine/presentation/page/select_robot/cubit/select_robot_cubit.dart';
import 'package:viam_marine/presentation/page/select_robot/cubit/select_robot_state.dart';
import 'package:viam_marine/presentation/routing/router.gr.dart';
import 'package:viam_marine/presentation/widgets/common_list_tile/common_list_tile.dart';
import 'package:viam_marine/presentation/widgets/empty_state/empty_state_widget.dart';
import 'package:viam_marine/presentation/widgets/loading_indicator/app_loading_indicator.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/style/dimens.dart';
import 'package:viam_marine/utils/ignore_else_state.dart';

class SelectRobotPage extends StatelessWidget with AutoRouteWrapper {
  const SelectRobotPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => getIt<SelectRobotCubit>()..init(),
        child: this,
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: BlocConsumer<SelectRobotCubit, SelectRobotState>(
            builder: _builder,
            listener: _listener,
          ),
        ),
      );

  Widget _builder(BuildContext context, SelectRobotState state) => state.maybeWhen(
        connectingToRobot: () => const SelectRobotLoader(loaderText: 'Connecting to robot...'),
        locationsAndRobotsLoading: () => const SelectRobotLoader(loaderText: 'Loading robots...'),
        organizationsLoading: () => const SelectRobotLoader(loaderText: 'Loading organizations...'),
        organizationsLoaded: (organizations) => LoadedOrganizations(organizations: organizations),
        locationsAndRobotsLoaded: (locations, robots) => LocationsBody(locations: locations, robots: robots),
        orElse: SizedBox.shrink,
      );

  void _listener(BuildContext context, SelectRobotState state) => state.maybeWhen(
        goToMainPage: (robot) => AutoRouter.of(context).replaceAll([MainRoute(robot: robot)]),
        orElse: doNothing,
      );
}

class LoadedOrganizations extends StatelessWidget {
  final List<ViamAppOrganization> organizations;

  const LoadedOrganizations({super.key, required this.organizations});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimens.m,
          vertical: Dimens.s,
        ),
        child: organizations.isEmpty
            ? EmptyStateWidget(
                //TODO: Change icon when designs ready
                iconPath: Assets.images.svg.icons.connectionError.path,
                title: Strings.of(context).organizations_page_empty_state_title,
                subtitle: Strings.of(context).organizations_page_empty_state_subtitle,
                onTap: () {},
              )
            : ListView.separated(
                itemBuilder: (context, index) => CommonListTile(
                  title: organizations[index].name,
                  onTap: () => context.read<SelectRobotCubit>().selectOrganization(
                        organizations[index].id,
                      ),
                ),
                separatorBuilder: (context, index) => const SizedBox(height: Dimens.s),
                itemCount: organizations.length,
              ),
      );
}

class SelectRobotLoader extends StatelessWidget {
  final String loaderText;

  const SelectRobotLoader({
    super.key,
    required this.loaderText,
  });

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const Spacer(),
          const AppLoadingIndicator(),
          Text(
            loaderText,
            style: AppTypography.bodyMedium,
          ),
          const Spacer(),
        ],
      );
}

class LocationsBody extends StatelessWidget with ExtensionMixin {
  final List<ViamAppLocation> locations;
  final List<ViamAppRobot> robots;

  const LocationsBody({
    super.key,
    required this.locations,
    required this.robots,
  });

  @override
  Widget build(BuildContext context) => locations.isEmpty
      ? EmptyStateWidget(
          title: Strings.of(context).locations_page_empty_state_title,
          subtitle: Strings.of(context).locations_page_empty_state_subtitle,
          iconPath: Assets.images.svg.icons.connectionError.path,
        )
      : ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(
              vertical: Dimens.m,
              horizontal: Dimens.m,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  locations[index].name,
                  style: AppTypography.bodySemibold.copyWith(
                    color: context.getColors().black,
                  ),
                ),
                const SizedBox(height: Dimens.m),
                RobotList(
                  robots: robots.where((robot) => robot.location == locations[index].id).toList(growable: false),
                ),
              ],
            ),
          ),
          itemCount: locations.length,
          shrinkWrap: true,
        );
}
