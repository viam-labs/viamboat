import 'package:viam_marine/sdk/src/data/app/mapper/shared_secret_state_to_viam_shared_secret_state_mapper.dart';
import 'package:viam_marine/sdk/src/data/app/model/viam_shared_secret.dart';
import 'package:viam_marine/sdk/src/gen/app/v1/app.pb.dart';

class SharedSecretToViamSharedSecretMapper {
  final SharedSecretStateToViamSharedSecretStateMapper _sharedSecretStateToStateMapper;

  const SharedSecretToViamSharedSecretMapper(this._sharedSecretStateToStateMapper);

  ViamSharedSecret call(SharedSecret dto) => ViamSharedSecret(
        _sharedSecretStateToStateMapper(dto.state),
        dto.id,
        dto.secret,
        dto.createdOn.toDateTime(),
      );
}
