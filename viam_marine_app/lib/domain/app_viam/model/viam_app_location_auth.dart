import 'package:equatable/equatable.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_shared_secret.dart';
import 'package:viam_sdk/viam_sdk.dart';

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

extension ViamAppLocationAuthMapper on ViamLocationAuth {
  ViamAppLocationAuth toDomain() => ViamAppLocationAuth(
        locationId,
        secrets.map((secret) => secret.toDomain()).toList(growable: false),
      );
}
