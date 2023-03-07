import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/data/app_viam/mapper/viam_location_auth_to_viam_app_location_auth_mapper.dart';
import 'package:viam_marine/app/data/app_viam/mapper/viam_location_organization_to_viam_app_location_organization_mapper.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_location.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_location_organization.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@injectable
class ViamLocationToAppViamLocationMapper {
  final ViamLocationAuthToViamAppLocationAuthMapper _viamLocationAuthToViamAppLocationAuthMapper;
  final ViamLocationOrganizationToViamAppLocationOrganizationMapper
      _viamLocationOrganizationToViamAppLocationOrganizationMapper;

  const ViamLocationToAppViamLocationMapper(
    this._viamLocationAuthToViamAppLocationAuthMapper,
    this._viamLocationOrganizationToViamAppLocationOrganizationMapper,
  );

  ViamAppLocation call(ViamLocation dto) => ViamAppLocation(
        id: dto.id,
        name: dto.name,
        parentLocationId: dto.parentLocationId,
        auth: _viamLocationAuthToViamAppLocationAuthMapper(dto.auth),
        organizations: dto.organizations
            .map<ViamAppLocationOrganization>(_viamLocationOrganizationToViamAppLocationOrganizationMapper)
            .toList(growable: false),
        createdOn: dto.createdOn,
        robotCount: dto.robotCount,
      );
}
