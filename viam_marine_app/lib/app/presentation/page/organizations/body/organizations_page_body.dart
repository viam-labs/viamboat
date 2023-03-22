import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_organization.dart';
import 'package:viam_marine/app/presentation/page/organizations/cubit/organizations_cubit.dart';
import 'package:viam_marine/app/presentation/widgets/common_list_tile/common_list_tile.dart';
import 'package:viam_marine/app/style/dimens.dart';

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
        child: ListView.separated(
          itemBuilder: (context, index) => CommonListTile(
            title: organizations[index].name,
            onTap: () => context.read<OrganizationsCubit>().onTap(organizations[index]),
          ),
          separatorBuilder: (context, index) => const SizedBox(height: Dimens.s),
          itemCount: organizations.length,
        ),
      );
}
