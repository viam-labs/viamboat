import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_organization.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/page/organizations/cubit/organizations_cubit.dart';
import 'package:viam_marine/app/presentation/page/organizations/cubit/organizations_state.dart';
import 'package:viam_marine/app/presentation/page/organizations/widgets/location/location_widget.dart';
import 'package:viam_marine/app/presentation/widgets/app_bar/viam_app_bar.dart';
import 'package:viam_marine/app/presentation/widgets/loading_indicator/app_loading_indicator.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

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
        body: BlocBuilder<OrganizationsCubit, OrganizationsState>(
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
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(Dimens.s),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              organization.name,
              style: AppTypography.title,
            ),
            const SizedBox(height: Dimens.s),
            Text(
              Strings.of(context).locations,
              style: AppTypography.bodySemibold,
            ),
            LocationWidget(
              id: organization.id,
            ),
          ],
        ),
      );
}
