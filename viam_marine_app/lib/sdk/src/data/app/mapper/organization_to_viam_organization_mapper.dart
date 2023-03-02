import 'package:viam_marine/sdk/src/domain/app/model/organization.dart';
import 'package:viam_marine/sdk/src/gen/app/v1/app.pbgrpc.dart';

class OrganizationToViamOrganizationMapper {
  ViamOrganization call(Organization dto) => ViamOrganization(
        dto.id,
        dto.name,
        dto.createdOn.toDateTime(),
      );
}
