import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/data/app_viam/mapper/viam_shared_secret_state_to_viam_app_shared_secret_state_mapper.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_shared_secret.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@injectable
class ViamSharedSecretToViamAppSharedSecretMapper {
  final ViamSharedSecretStateToViamAppSharedSecretState _viamStateToViamAppSharedSecretState;

  const ViamSharedSecretToViamAppSharedSecretMapper(this._viamStateToViamAppSharedSecretState);

  ViamAppSharedSecret call(ViamSharedSecret dto) => ViamAppSharedSecret(
        _viamStateToViamAppSharedSecretState(dto.state),
        dto.id,
        dto.secret,
        dto.createdOn,
      );
}
