import 'package:equatable/equatable.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

class ViamAppLocationOrganization extends Equatable {
  final String organizationId;
  final bool primary;

  const ViamAppLocationOrganization(
    this.organizationId,
    this.primary,
  );

  @override
  List<Object?> get props => [organizationId, primary];
}

extension ViamAppLocationOrganizationMapper on ViamLocationOrganization {
  ViamAppLocationOrganization toDomain() => ViamAppLocationOrganization(
        organizationId,
        primary,
      );
}
