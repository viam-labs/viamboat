import 'package:equatable/equatable.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_location_auth.dart';
import 'package:viam_sdk/protos/app/app.dart';

class ViamAppLocation extends Equatable {
  final String id;
  final String name;
  final ViamAppLocationAuth auth;

  const ViamAppLocation({
    required this.id,
    required this.name,
    required this.auth,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        auth,
      ];
}

extension ViamAppLocationMapper on Location {
  ViamAppLocation toDomain() => ViamAppLocation(
        id: id,
        name: name,
        auth: auth.toDomain(),
      );
}

extension LocationMapper on ViamAppLocation {
  Location toDto() => Location()
    ..id = id
    ..name = name
    ..auth = auth.toDto();
}
