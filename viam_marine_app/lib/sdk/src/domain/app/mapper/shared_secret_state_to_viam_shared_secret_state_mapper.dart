import 'package:viam_marine/sdk/src/domain/app/model/viam_shared_secret.dart';
import 'package:viam_marine/sdk/src/gen/app/v1/app.pbenum.dart';

class SharedSecretStateToViamSharedSecretStateMapper {
  ViamSharedSecretState call(SharedSecret_State dto) {
    ViamSharedSecretState state;

    switch (dto) {
      case SharedSecret_State.STATE_UNSPECIFIED:
        state = ViamSharedSecretState.unspecified;
        break;
      case SharedSecret_State.STATE_ENABLED:
        state = ViamSharedSecretState.enabled;
        break;
      case SharedSecret_State.STATE_DISABLED:
        state = ViamSharedSecretState.disabled;
        break;
      default:
        state = ViamSharedSecretState.unspecified;
    }
    return state;
  }
}
