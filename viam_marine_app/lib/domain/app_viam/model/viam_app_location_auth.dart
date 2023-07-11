import 'package:equatable/equatable.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_shared_secret.dart';
import 'package:viam_sdk/protos/app/app.dart';

class ViamAppLocationAuth extends Equatable {
  final String locationId;
  final List<ViamAppSharedSecret> secrets;

  const ViamAppLocationAuth(
    this.locationId,
    this.secrets,
  );

  @override
  List<Object?> get props => [
        locationId,
        secrets,
      ];
}

extension ViamAppLocationAuthMapper on LocationAuth {
  ViamAppLocationAuth toDomain() => ViamAppLocationAuth(
        locationId,
        secrets.map((secret) => secret.toDomain()).toList(growable: false),
      );
}

extension LocationAuthMapper on ViamAppLocationAuth {
  LocationAuth toDto() => LocationAuth()
    ..locationId = locationId
    ..secrets.addAll(secrets.map((secret) => secret.toDto()));
}
