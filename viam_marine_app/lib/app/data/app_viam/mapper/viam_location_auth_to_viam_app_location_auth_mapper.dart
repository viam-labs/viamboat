import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_location_auth.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_shared_secret.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

import 'viam_shared_secret_to_viam_app_shared_secret_mapper.dart';

@injectable
class ViamLocationAuthToViamAppLocationAuthMapper {
  final ViamSharedSecretToViamAppSharedSecretMapper _sharedSecretToViamAppSharedSecretMapper;

  const ViamLocationAuthToViamAppLocationAuthMapper(this._sharedSecretToViamAppSharedSecretMapper);

  ViamAppLocationAuth call(ViamLocationAuth dto) => ViamAppLocationAuth(
        dto.locationId,
        dto.secrets.map<ViamAppSharedSecret>(_sharedSecretToViamAppSharedSecretMapper).toList(growable: false),
      );
}
