import 'package:viam_marine/sdk/src/data/app/mapper/location_auth_to_viam_location_auth_mapper.dart';
import 'package:viam_marine/sdk/src/data/app/mapper/location_organization_to_viam_location_organization_mapper.dart';
import 'package:viam_marine/sdk/src/domain/app/model/viam_location.dart';
import 'package:viam_marine/sdk/src/gen/app/v1/app.pbgrpc.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

class LocationToViamLocationMapper {
  final LocationAuthToViamLocationAuthMapper _locationAuthToViamLocationAuthMapper;
  final LocationOrganizationToViamLocationOrganizationMapper _locationOrganizationToViamLocationOrganizationMapper;

  const LocationToViamLocationMapper(
    this._locationAuthToViamLocationAuthMapper,
    this._locationOrganizationToViamLocationOrganizationMapper,
  );

  ViamLocation call(Location dto) => ViamLocation(
        id: dto.id,
        name: dto.name,
        parentLocationId: dto.parentLocationId,
        auth: _locationAuthToViamLocationAuthMapper(dto.auth),
        organizations: dto.organizations
            .map<ViamLocationOrganization>(_locationOrganizationToViamLocationOrganizationMapper)
            .toList(growable: false),
        createdOn: dto.createdOn.toDateTime(),
        robotCount: dto.robotCount,
      );
}
