import 'package:flutter/material.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_organization.dart';
import 'package:viam_marine/app/presentation/page/organizations/widgets/organization_tile.dart';

class OrganizationsPageBody extends StatelessWidget {
  final List<ViamAppOrganization> organizations;

  const OrganizationsPageBody({
    super.key,
    required this.organizations,
  });

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemBuilder: (context, index) => OrganizationTile(
          organization: organizations[index],
        ),
        itemCount: organizations.length,
      );
}
