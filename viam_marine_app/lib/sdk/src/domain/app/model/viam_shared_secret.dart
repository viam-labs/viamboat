import 'package:viam_marine/sdk/src/domain/app/model/viam_shared_secret_state.dart';
import 'package:viam_marine/sdk/src/gen/app/v1/app.pb.dart';

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

extension ViamSharedSecretMapper on SharedSecret {
  ViamSharedSecret toDomain() => ViamSharedSecret(
        state.toDomain(),
        id,
        secret,
        createdOn.toDateTime(),
      );
}
