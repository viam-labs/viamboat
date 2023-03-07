class ViamSharedSecret {
  final ViamSharedSecretState state;
  final String id;
  final String secret;
  final DateTime createdOn;

  const ViamSharedSecret(
    this.state,
    this.id,
    this.secret,
    this.createdOn,
  );
}

enum ViamSharedSecretState {
  unspecified,
  enabled,
  disabled,
}
