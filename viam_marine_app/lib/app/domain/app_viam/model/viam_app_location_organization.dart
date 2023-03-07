import 'package:equatable/equatable.dart';

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
