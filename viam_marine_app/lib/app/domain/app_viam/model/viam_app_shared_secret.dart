import 'package:equatable/equatable.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

class ViamAppSharedSecret extends Equatable {
  final ViamAppSharedSecretState state;
  final String id;
  final String secret;
  final DateTime createdOn;

  const ViamAppSharedSecret(
    this.state,
    this.id,
    this.secret,
    this.createdOn,
  );

  @override
  List<Object?> get props => [
        state,
        id,
        secret,
        createdOn,
      ];
}

enum ViamAppSharedSecretState {
  unspecified,
  enabled,
  disabled,
}

extension ViamAppSharedSecretStateMapper on ViamSharedSecretState {
  ViamAppSharedSecretState toDomain() {
    switch (this) {
      case ViamSharedSecretState.unspecified:
        return ViamAppSharedSecretState.unspecified;
      case ViamSharedSecretState.enabled:
        return ViamAppSharedSecretState.enabled;
      case ViamSharedSecretState.disabled:
        return ViamAppSharedSecretState.disabled;
    }
  }
}

extension ViamAppSharedSecretMapper on ViamSharedSecret {
  ViamAppSharedSecret toDomain() => ViamAppSharedSecret(
        state.toDomain(),
        id,
        secret,
        createdOn,
      );
}
