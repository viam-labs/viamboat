import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/domain/app_viam/model/robot_config.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/select_robot/body/select_robot_error_body.dart';
import 'package:viam_marine/presentation/page/select_robot/body/select_robot_loaded_organizations_body.dart';
import 'package:viam_marine/presentation/page/select_robot/body/select_robot_loading_body.dart';
import 'package:viam_marine/presentation/page/select_robot/body/select_robot_locations_and_robots_loaded_body.dart';
import 'package:viam_marine/presentation/page/select_robot/cubit/select_robot_cubit.dart';
import 'package:viam_marine/presentation/page/select_robot/cubit/select_robot_state.dart';
import 'package:viam_marine/presentation/routing/router.gr.dart';
import 'package:viam_marine/presentation/widgets/snack_bar/viam_snack_bar.dart';
import 'package:viam_marine/utils/ignore_else_state.dart';

class SelectRobotPage extends StatelessWidget with AutoRouteWrapper {
  final bool isAutoConnectOn;

  const SelectRobotPage({
    super.key,
    this.isAutoConnectOn = true,
  });

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (_) => getIt<SelectRobotCubit>()..init(isAutoConnectOn),
        child: this,
      );

  @override
  Widget build(BuildContext context) => BlocConsumer<SelectRobotCubit, SelectRobotState>(
        builder: _builder,
        listener: _listener,
        buildWhen: _buildWhen,
        listenWhen: _listenWhen,
      );

  Widget _builder(BuildContext context, SelectRobotState state) => state.maybeWhen(
        connectingToRobot: () => SelectRobotLoadingBody(
          loaderText: Strings.of(context).select_robot_page_connecting_to_robot_title,
        ),
        locationsAndRobotsLoading: () => SelectRobotLoadingBody(
          loaderText: Strings.of(context).select_robot_page_locations_and_robots_loading_title,
        ),
        organizationsLoading: () => SelectRobotLoadingBody(
          loaderText: Strings.of(context).select_robot_page_org_loading_title,
        ),
        organizationsLoaded: (organizations) => SelectRobotLoadedOrganizationsBody(
          organizations: organizations,
          isAutoConnectOn: isAutoConnectOn,
        ),
        locationsAndRobotsLoaded: (
          locations,
          robots,
          organizationName,
        ) =>
            SelectRobotLocationsAndRobotsLoadedBody(
          locations: locations,
          robots: robots,
          organizationName: organizationName,
        ),
        loading: () => const SelectRobotLoadingBody(),
        organizationsError: () => SelectRobotErrorBody(
          subtitle: Strings.of(context).select_robot_page_organizations_error,
          onTap: () => context.read<SelectRobotCubit>().init(isAutoConnectOn),
        ),
        locationsAndRobotsError: (organizationId) => SelectRobotErrorBody(
          subtitle: Strings.of(context).select_robot_page_loaded_loc_and_robots_error,
          onTap: () => context.read<SelectRobotCubit>().fetchLocationsAndRobots(organizationId),
        ),
        orElse: SizedBox.shrink,
      );

  void _listener(BuildContext context, SelectRobotState state) => state.maybeWhen(
        goToMainPage: (robotConfig) => _goToMainPage(
          context,
          robotConfig,
        ),
        connectionError: (robot, secret) => _goToConnectionErrorPage(
          context,
          robot,
          secret,
        ),
        logout: () => AutoRouter.of(context).replaceAll([const SplashRoute()]),
        logoutError: () => _showLogoutError(context),
        orElse: doNothing,
      );

  bool _listenWhen(_, SelectRobotState current) =>
      current is SelectRobotStateConnectionError ||
      current is SelectRobotStateGoToMainPage ||
      current is SelectRobotStateLogout ||
      current is SelectRobotStateLogoutError;

  bool _buildWhen(_, SelectRobotState current) =>
      current is! SelectRobotStateConnectionError &&
      current is! SelectRobotStateGoToMainPage &&
      current is! SelectRobotStateLogout &&
      current is! SelectRobotStateLogoutError;

  void _goToMainPage(
    BuildContext context,
    RobotConfig robotConfig,
  ) =>
      AutoRouter.of(context).replaceAll([MainRoute(robotConfig: robotConfig)]);

  void _goToConnectionErrorPage(
    BuildContext context,
    ViamAppRobot robot,
    String secret,
  ) =>
      AutoRouter.of(context).navigate(ConnectionErrorRoute(
        robot: robot,
        secret: secret,
      ));

  void _showLogoutError(BuildContext context) => ScaffoldMessenger.of(context).showSnackBar(ViamSnackBar(
        contentMessage: Strings.of(context).error_logout_message,
        snackBarBackgroundColor: context.getColors(listen: false).red,
      ));
}
