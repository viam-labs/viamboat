import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/locations/body/locations_page_body.dart';
import 'package:viam_marine/presentation/page/locations/cubit/locations_page_cubit.dart';
import 'package:viam_marine/presentation/page/locations/cubit/locations_page_state.dart';
import 'package:viam_marine/presentation/routing/router.gr.dart';
import 'package:viam_marine/presentation/widgets/app_bar/viam_app_bar.dart';
import 'package:viam_marine/presentation/widgets/error_widget/error_state_widget.dart';
import 'package:viam_marine/presentation/widgets/loading_indicator/app_loading_indicator.dart';
import 'package:viam_marine/utils/ignore_else_state.dart';

class LocationsPage extends StatelessWidget with AutoRouteWrapper, ExtensionMixin {
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
        appBar: ViamAppBar(
          title: Strings.of(context).locations,
          leading: BackButton(
            color: context.getColors().darkBlue1,
          ),
        ),
        body: SafeArea(
          child: BlocConsumer<LocationsPageCubit, LocationsPageState>(
            builder: _builder,
            listener: _listener,
            buildWhen: _buildWhen,
            listenWhen: _listenWhen,
          ),
        ),
      );

  bool _buildWhen(_, LocationsPageState current) =>
      current is! LocationsPageStateConnectionError && current is! LocationsPageStateGoToMainPage;

  bool _listenWhen(_, LocationsPageState current) =>
      current is LocationsPageStateConnectionError || current is LocationsPageStateGoToMainPage;

  void _listener(BuildContext context, LocationsPageState state) => state.maybeWhen(
        goToMainPage: (robot) => _goToMainPage(robot, context),
        connectionError: (robot, secret) => _goToConnectionErrorPage(
          robot,
          secret,
          context,
        ),
        orElse: doNothing,
      );

  Widget _builder(BuildContext context, LocationsPageState state) => state.maybeWhen(
        loading: () => const AppLoadingIndicator(),
        loaded: (robots, locations) => LocationsPageBody(
          locations: locations,
          robots: robots,
        ),
        error: () => ErrorStateWidget(
          iconPath: Assets.images.svg.icons.connectionError.path,
          title: Strings.of(context).error_something_went_wrong,
          subtitle: Strings.of(context).locations_page_error,
          buttonText: Strings.of(context).try_again,
          onTap: () => context.read<LocationsPageCubit>().init(organizationId),
        ),
        orElse: SizedBox.shrink,
      );

  void _goToMainPage(ViamAppRobot robot, BuildContext context) =>
      AutoRouter.of(context).replaceAll([MainRoute(robot: robot)]);

  void _goToConnectionErrorPage(
    ViamAppRobot robot,
    String secret,
    BuildContext context,
  ) =>
      AutoRouter.of(context).navigate(
        ConnectionErrorRoute(robot: robot, secret: secret),
      );
}
