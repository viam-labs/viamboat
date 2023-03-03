import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/data/app_viam/data_source/app_viam_data_source.dart';
import 'package:viam_marine/app/data/app_viam/mapper/viam_organization_to_viam_app_organization.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_organization.dart';
import 'package:viam_marine/app/domain/app_viam/service/app_viam_service.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@LazySingleton(as: AppViamService)
class AppViamServiceImpl extends AppViamService {
  final AppViamDataSource _appViamDataSource;
  final ViamOrganizationToViamAppOrganization _viamOrganizationToViamAppOrganization;

  AppViamServiceImpl(
    this._appViamDataSource,
    this._viamOrganizationToViamAppOrganization,
  );

  @override
  Future<List<ViamAppOrganization>> listOrganizations() async {
    final List<ViamOrganization> dto = await _appViamDataSource.listOrganizations();

    final List<ViamAppOrganization> organizations =
        dto.map<ViamAppOrganization>(_viamOrganizationToViamAppOrganization).toList(growable: false);

    return organizations;
  }
}
