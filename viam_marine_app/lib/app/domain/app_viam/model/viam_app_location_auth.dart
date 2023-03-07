import 'package:equatable/equatable.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_shared_secret.dart';

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
