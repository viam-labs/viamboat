import 'package:viam_marine/sdk/src/domain/app/model/viam_location_auth.dart';
import 'package:viam_marine/sdk/src/domain/app/model/viam_location_organization.dart';

class ViamLocation {
  final String id;
  final String name;
  final String parentLocationId;
  final ViamLocationAuth auth;
  final List<ViamLocationOrganization> organizations;
  final DateTime createdOn;
  final int robotCount;

  const ViamLocation({
    required this.id,
    required this.name,
    required this.parentLocationId,
    required this.auth,
    required this.organizations,
    required this.createdOn,
    required this.robotCount,
  });
}
