import 'package:grpc/grpc_connection_interface.dart';
import 'package:viam_marine/sdk/src/gen/proto/rpc/v1/auth.pbgrpc.dart';

const type = "robot-location-secret";

class ViamAuthDataSource {
  final ClientChannelBase _client;
  final String url;
  final String? secure;

  ViamAuthDataSource(
    this._client,
    this.url,
    this.secure,
  );

  Future<AuthenticateResponse> getAuthData() async {
    final authClient = AuthServiceClient(_client);

    final authRequest = AuthenticateRequest();
    final credentials = Credentials(
      type: type,
      payload: secure,
    );
    authRequest.entity = url.replaceAll(RegExp(r"^(.*:\/\/)/"), "");

    authRequest.credentials = credentials;

    final response = await authClient.authenticate(authRequest);

    return response;
  }
}
