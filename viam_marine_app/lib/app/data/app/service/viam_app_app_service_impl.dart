import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/data/app/data_source/viam_app_app_data_source.dart';
import 'package:viam_marine/app/data/app/mapper/viam_organization_to_viam_app_organization.dart';
import 'package:viam_marine/app/domain/app/model/viam_app_organization.dart';
import 'package:viam_marine/app/domain/app/service/viam_app_app_servcie.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@LazySingleton(as: ViamAppAppService)
class ViamAppAppServiceImpl extends ViamAppAppService {
  final ViamAppAppDataSource _appAppDataSource;
  final ViamOrganizationToViamAppOrganization _viamOrganizationToViamAppOrganization;

  ViamAppAppServiceImpl(
    this._appAppDataSource,
    this._viamOrganizationToViamAppOrganization,
  );

  @override
  Future<List<ViamAppOrganization>> listOrganizations() async {
    final List<ViamOrganization> dto = await _appAppDataSource.listOrganizations();

    final List<ViamAppOrganization> organizations =
        dto.map<ViamAppOrganization>(_viamOrganizationToViamAppOrganization).toList(growable: false);

    return organizations;
  }
}
