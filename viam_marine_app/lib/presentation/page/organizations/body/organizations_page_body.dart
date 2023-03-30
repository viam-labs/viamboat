import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_organization.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/organizations/cubit/organizations_cubit.dart';
import 'package:viam_marine/presentation/widgets/common_list_tile/common_list_tile.dart';
import 'package:viam_marine/presentation/widgets/empty_state/empty_state_widget.dart';
import 'package:viam_marine/style/dimens.dart';

class OrganizationsPageBody extends StatelessWidget {
  final List<ViamAppOrganization> organizations;

  const OrganizationsPageBody({
    super.key,
    required this.organizations,
  });

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
                onTap: context.read<OrganizationsCubit>().init,
              )
            : ListView.separated(
                itemBuilder: (context, index) => CommonListTile(
                  title: organizations[index].name,
                  onTap: () => context.read<OrganizationsCubit>().onTap(organizations[index]),
                ),
                separatorBuilder: (context, index) => const SizedBox(height: Dimens.s),
                itemCount: organizations.length,
              ),
      );
}
