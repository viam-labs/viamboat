import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_organization.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/page/organizations/cubit/organizations_cubit.dart';
import 'package:viam_marine/app/presentation/page/organizations/cubit/organizations_state.dart';
import 'package:viam_marine/app/presentation/routing/router.gr.dart';
import 'package:viam_marine/app/presentation/widgets/app_bar/viam_app_bar.dart';
import 'package:viam_marine/app/presentation/widgets/loading_indicator/app_loading_indicator.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';
import 'package:viam_marine/app/utils/ignore_else_state.dart';

class OrganizationsPage extends StatelessWidget with AutoRouteWrapper {
  const OrganizationsPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<OrganizationsCubit>()..init(),
        child: this,
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: ViamAppBar(title: Strings.of(context).organizations),
        body: BlocConsumer<OrganizationsCubit, OrganizationsState>(
          listener: (context, state) => state.maybeWhen(
            goToLocationsPage: (organizationId) =>
                AutoRouter.of(context).navigate(LocationsRoute(organizationId: organizationId)),
            orElse: doNothing,
          ),
          builder: (context, state) => state.maybeWhen(
            loading: () => const AppLoadingIndicator(),
            loaded: (orgs) => SafeArea(
              child: ListView.builder(
                itemBuilder: (context, index) => OrganizationTile(
                  organization: orgs[index],
                ),
                itemCount: orgs.length,
              ),
            ),
            orElse: () => const SizedBox.shrink(),
          ),
        ),
      );
}

class OrganizationTile extends StatelessWidget with ExtensionMixin {
  final ViamAppOrganization organization;
  const OrganizationTile({
    super.key,
    required this.organization,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => context.read<OrganizationsCubit>().onTap(organization),
        child: Padding(
          padding: const EdgeInsets.all(Dimens.s),
          child: Text(
            organization.name,
            style: AppTypography.body,
          ),
        ),
      );
}
