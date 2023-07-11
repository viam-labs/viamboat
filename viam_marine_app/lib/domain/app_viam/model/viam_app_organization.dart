import 'package:equatable/equatable.dart';
import 'package:viam_sdk/protos/app/app.dart';

class ViamAppOrganization extends Equatable {
  final String id;
  final String name;

  const ViamAppOrganization(this.id, this.name);

  @override
  List<Object?> get props => [id, name];
}

extension ViamAppOrganizationMapper on Organization {
  ViamAppOrganization toDomain() => ViamAppOrganization(id, name);
}

extension OrganizationMapper on ViamAppOrganization {
  Organization toDto() => Organization()
    ..id = id
    ..name = name;
}
