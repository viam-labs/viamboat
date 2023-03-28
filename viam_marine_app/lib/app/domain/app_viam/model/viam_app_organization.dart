import 'package:equatable/equatable.dart';
import 'package:viam_sdk/viam_sdk.dart';

class ViamAppOrganization extends Equatable {
  final String id;
  final String name;
  final DateTime createdOn;

  const ViamAppOrganization(
    this.id,
    this.name,
    this.createdOn,
  );

  @override
  List<Object?> get props => [
        id,
        name,
        createdOn,
      ];
}

extension ViamAppOrganizationMapper on ViamOrganization {
  ViamAppOrganization toDomain() => ViamAppOrganization(
        id,
        name,
        createdOn,
      );
}
