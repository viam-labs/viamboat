import 'package:equatable/equatable.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_location_auth.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_location_organization.dart';

class ViamAppLocation extends Equatable {
  final String id;
  final String name;
  final String parentLocationId;
  final ViamAppLocationAuth auth;
  final List<ViamAppLocationOrganization> organizations;
  final DateTime createdOn;
  final int robotCount;

  const ViamAppLocation({
    required this.id,
    required this.name,
    required this.parentLocationId,
    required this.auth,
    required this.organizations,
    required this.createdOn,
    required this.robotCount,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        parentLocationId,
        auth,
        organizations,
        createdOn,
        robotCount,
      ];
}
