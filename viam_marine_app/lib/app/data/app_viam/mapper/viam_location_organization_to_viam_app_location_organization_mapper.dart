import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_location_organization.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@injectable
class ViamLocationOrganizationToViamAppLocationOrganizationMapper {
  ViamAppLocationOrganization call(ViamLocationOrganization dto) => ViamAppLocationOrganization(
        dto.organizationId,
        dto.primary,
      );
}
