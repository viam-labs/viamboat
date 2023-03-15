import 'package:viam_marine/sdk/src/gen/app/v1/app.pb.dart';

class ViamOrganization {
  final String id;
  final String name;
  final DateTime createdOn;

  const ViamOrganization(
    this.id,
    this.name,
    this.createdOn,
  );
}

extension ViamOrganizationMapper on Organization {
  ViamOrganization toDomain() => ViamOrganization(
        id,
        name,
        createdOn.toDateTime(),
      );
}
