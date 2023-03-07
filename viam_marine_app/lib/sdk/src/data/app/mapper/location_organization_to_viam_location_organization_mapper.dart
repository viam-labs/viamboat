import 'package:viam_marine/sdk/src/domain/app/model/viam_location_organization.dart';
import 'package:viam_marine/sdk/src/gen/app/v1/app.pbgrpc.dart';

class LocationOrganizationToViamLocationOrganizationMapper {
  ViamLocationOrganization call(LocationOrganization dto) => ViamLocationOrganization(
        dto.organizationId,
        dto.primary,
      );
}
