import 'package:viam_marine/sdk/src/data/app/mapper/shared_secret_to_viam_shared_secret_mapper.dart';
import 'package:viam_marine/sdk/src/data/app/model/viam_location_auth.dart';
import 'package:viam_marine/sdk/src/data/app/model/viam_shared_secret.dart';
import 'package:viam_marine/sdk/src/gen/app/v1/app.pb.dart';

class LocationAuthToViamLocationAuthMapper {
  final SharedSecretToViamSharedSecretMapper _sharedSecretToViamSharedSecretMapper;

  const LocationAuthToViamLocationAuthMapper(this._sharedSecretToViamSharedSecretMapper);

  ViamLocationAuth call(LocationAuth dto) => ViamLocationAuth(
        dto.locationId,
        dto.secrets.map<ViamSharedSecret>(_sharedSecretToViamSharedSecretMapper).toList(growable: false),
      );
}
