import 'package:equatable/equatable.dart';

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
