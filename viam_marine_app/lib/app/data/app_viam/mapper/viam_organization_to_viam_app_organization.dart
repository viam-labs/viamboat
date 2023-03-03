import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_organization.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@injectable
class ViamOrganizationToViamAppOrganization {
  ViamAppOrganization call(ViamOrganization dto) => ViamAppOrganization(
        dto.id,
        dto.name,
        dto.createdOn,
      );
}
