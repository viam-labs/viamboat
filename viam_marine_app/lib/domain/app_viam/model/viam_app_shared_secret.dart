import 'package:equatable/equatable.dart';
import 'package:viam_sdk/protos/app/app.dart';

class ViamAppSharedSecret extends Equatable {
  final String id;
  final String secret;

  const ViamAppSharedSecret(
    this.id,
    this.secret,
  );

  @override
  List<Object?> get props => [
        id,
        secret,
      ];
}

extension ViamAppSharedSecretMapper on SharedSecret {
  ViamAppSharedSecret toDomain() => ViamAppSharedSecret(
        id,
        secret,
      );
}

extension SharedSecretMapper on ViamAppSharedSecret {
  SharedSecret toDto() => SharedSecret()
    ..id = id
    ..secret = secret;
}
