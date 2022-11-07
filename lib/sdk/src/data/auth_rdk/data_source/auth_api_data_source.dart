import 'package:grpc/grpc.dart';
import 'package:viam_marine/sdk/src/protos/viam/rpc/v1/auth.pbgrpc.dart';

const type = "robot-location-secret";

class ViamAuthDataSource {
  final ClientChannel _client;

  ViamAuthDataSource(this._client);

  Future<AuthenticateResponse> getAuthData(
    String address,
    String payload,
  ) async {
    final authClient = AuthServiceClient(_client);

    final authRequest = AuthenticateRequest();
    final credentials = Credentials(
      type: type,
      payload: payload,
    );

    //re.sub(r"^(.*:\/\/)/", "", address)
    authRequest.entity = address.replaceAll(RegExp(r"^(.*:\/\/)/"), "");

    authRequest.credentials = credentials;

    final response = await authClient.authenticate(authRequest);

    return response;
  }
}
