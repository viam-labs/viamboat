import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/organizations/body/organizations_page_body.dart';
import 'package:viam_marine/presentation/page/organizations/cubit/organizations_cubit.dart';
import 'package:viam_marine/presentation/page/organizations/cubit/organizations_state.dart';
import 'package:viam_marine/presentation/routing/router.gr.dart';
import 'package:viam_marine/presentation/widgets/app_bar/viam_app_bar.dart';
import 'package:viam_marine/presentation/widgets/error_widget/error_state_widget.dart';
import 'package:viam_marine/presentation/widgets/loading_indicator/app_loading_indicator.dart';
import 'package:viam_marine/presentation/widgets/snack_bar/viam_snack_bar.dart';
import 'package:viam_marine/utils/ignore_else_state.dart';

class OrganizationsPage extends StatelessWidget with AutoRouteWrapper, ExtensionMixin {
  const OrganizationsPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<OrganizationsCubit>()..init(),
        child: this,
      );

  @override
  Widget build(BuildContext context) => BlocConsumer<OrganizationsCubit, OrganizationsState>(
        listener: _listener,
        builder: _builder,
        buildWhen: _buildWhen,
        listenWhen: _listenWhen,
      );

  void _listener(BuildContext context, OrganizationsState state) => state.maybeWhen(
        goToLocationsPage: (organizationId) =>
            AutoRouter.of(context).navigate(LocationsRoute(organizationId: organizationId)),
        logoutError: () => _showError(context),
        logout: () => AutoRouter.of(context).replaceAll([const SplashRoute()]),
        orElse: doNothing,
      );

  Widget _builder(BuildContext context, OrganizationsState state) => Scaffold(
      appBar: ViamAppBar(
        title: Strings.of(context).organizations,
        trailing: IconButton(
          onPressed: context.read<OrganizationsCubit>().logout,
          icon: Icon(
            Icons.logout_outlined,
            color: context.getColors().darkBlue1,
          ),
        ),
      ),
      body: SafeArea(
        child: state.maybeWhen(
          loading: () => AppLoadingIndicator(),
          loaded: (orgs) => OrganizationsPageBody(organizations: orgs),
          error: () => ErrorStateWidget(
            iconPath: Assets.images.svg.icons.connectionError.path,
            title: Strings.of(context).error_something_went_wrong,
            onTap: context.read<OrganizationsCubit>().init,
            buttonText: Strings.of(context).try_again,
            subtitle: Strings.of(context).organizations_page_error,
          ),
          orElse: SizedBox.shrink,
        ),
      ));

  bool _buildWhen(_, OrganizationsState current) =>
      current is! OrganizationsStateGoToLocationsPage && current is! OrganizationsStateLogoutError;

  bool _listenWhen(_, OrganizationsState current) =>
      current is! OrganizationsStateLoaded &&
      current is! OrganizationsStateLoading &&
      current is! OrganizationsStateError;

  void _showError(BuildContext context) => ScaffoldMessenger.of(context).showSnackBar(
        ViamSnackBar(
          contentMessage: Strings.of(context).error_logout_message,
          snackBarBackgroundColor: context.getColors(listen: false).red,
        ),
      );
}
