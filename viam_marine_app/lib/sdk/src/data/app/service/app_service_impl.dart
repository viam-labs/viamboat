import 'package:viam_marine/sdk/src/data/app/data_source/app_api_data_source.dart';
import 'package:viam_marine/sdk/src/data/app/mapper/organization_to_viam_organization_mapper.dart';
import 'package:viam_marine/sdk/src/domain/app/model/organization.dart';
import 'package:viam_marine/sdk/src/domain/app/service/app_service.dart';
import 'package:viam_marine/sdk/src/gen/app/v1/app.pbgrpc.dart';

class ViamAppServiceImpl extends ViamAppService {
  final AppApiDataSource _appApiDataSource;
  final OrganizationToViamOrganizationMapper organizationToViamOrganizationMapper;

  ViamAppServiceImpl(
    this._appApiDataSource,
    this.organizationToViamOrganizationMapper,
  );

  @override
  Future<List<ViamOrganization>> listOrganizations() async {
    final ListOrganizationsResponse dto = await _appApiDataSource.listOrganizations();

    final List<ViamOrganization> organizations =
        dto.organizations.map<ViamOrganization>(organizationToViamOrganizationMapper).toList(growable: false);

    return organizations;
  }
}
