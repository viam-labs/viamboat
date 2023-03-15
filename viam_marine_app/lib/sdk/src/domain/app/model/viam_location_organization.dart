import 'package:viam_marine/sdk/src/gen/app/v1/app.pb.dart';

class ViamLocationOrganization {
  final String organizationId;
  final bool primary;

  const ViamLocationOrganization(this.organizationId, this.primary);
}

extension ViamLocationOrganizationMapper on LocationOrganization {
  ViamLocationOrganization toDomain() => ViamLocationOrganization(
        organizationId,
        primary,
      );
}
