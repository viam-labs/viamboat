import 'package:viam_marine/sdk/src/data/app/model/viam_shared_secret.dart';

class ViamLocationAuth {
  final String locationId;
  final List<ViamSharedSecret> secrets;

  const ViamLocationAuth(
    this.locationId,
    this.secrets,
  );
}
