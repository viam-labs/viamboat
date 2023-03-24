import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/page/organizations/body/organizations_page_body.dart';
import 'package:viam_marine/app/presentation/page/organizations/cubit/organizations_cubit.dart';
import 'package:viam_marine/app/presentation/page/organizations/cubit/organizations_state.dart';
import 'package:viam_marine/app/presentation/routing/router.gr.dart';
import 'package:viam_marine/app/presentation/widgets/app_bar/viam_app_bar.dart';
import 'package:viam_marine/app/presentation/widgets/loading_indicator/app_loading_indicator.dart';
import 'package:viam_marine/app/presentation/widgets/snack_bar/viam_snack_bar.dart';
import 'package:viam_marine/app/utils/ignore_else_state.dart';

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
        error: () => _showError(context),
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
          loading: () => const AppLoadingIndicator(),
          loaded: (orgs) => OrganizationsPageBody(organizations: orgs),
          orElse: SizedBox.shrink,
        ),
      ));

  bool _buildWhen(_, OrganizationsState current) => current is! OrganizationsStateGoToLocationsPage;

  bool _listenWhen(_, OrganizationsState current) =>
      current is! OrganizationsStateLoaded && current is! OrganizationsStateLoading;

  void _showError(BuildContext context) => ScaffoldMessenger.of(context).showSnackBar(
        ViamSnackBar(
          contentMessage: Strings.of(context).error_logout_message,
          snackBarBackgroundColor: context.getColors(listen: false).red,
        ),
      );
}
