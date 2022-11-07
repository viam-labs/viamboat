import 'package:viam_marine/sdk/src/di/di.dart';
import 'package:viam_marine/sdk/src/protos/viam/rpc/v1/auth.pbgrpc.dart';

const type = "robot-location-secret";

class ViamAuthDataSource {
  final ViamClientChannel _client;

  ViamAuthDataSource(this._client);

  Future<AuthenticateResponse> getAuthData() async {
    final authClient = AuthServiceClient(_client);

    final authRequest = AuthenticateRequest();
    final credentials = Credentials(
      type: type,
      payload: _client.payload,
    );
    final address = _client.url;
    //re.sub(r"^(.*:\/\/)/", "", address)
    authRequest.entity = address.replaceAll(RegExp(r"^(.*:\/\/)/"), "");

    authRequest.credentials = credentials;

    final response = await authClient.authenticate(authRequest);

    return response;
  }
}
