import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_shared_secret.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@injectable
class ViamSharedSecretStateToViamAppSharedSecretState {
  ViamAppSharedSecretState call(ViamSharedSecretState dto) {
    switch (dto) {
      case ViamSharedSecretState.unspecified:
        return ViamAppSharedSecretState.unspecified;
      case ViamSharedSecretState.enabled:
        return ViamAppSharedSecretState.enabled;
      case ViamSharedSecretState.disabled:
        return ViamAppSharedSecretState.disabled;
    }
  }
}
