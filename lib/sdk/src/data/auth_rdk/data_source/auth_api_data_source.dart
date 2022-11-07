import 'package:grpc/grpc.dart';
import 'package:viam_marine/sdk/src/protos/viam/rpc/v1/auth.pbgrpc.dart';

class ViamAuthDataSource {
  final ClientChannel _client;

  ViamAuthDataSource(this._client);

  Future<AuthenticateResponse> getAuthData() async {
    final authClient = AuthServiceClient(_client);

    final authRequest = AuthenticateRequest();
    final credentials = Credentials(
      type: "robot-location-secret",
      payload: "gacc9lht600wz9mcpf45b4optb1ahhrwjs7fttmvjcr1lpgz",
    );
    //re.sub(r"^(.*:\/\/)/", "", address)
    final address =  'https://camera-main.to5iytcwxn.local.viam.cloud:8080/viam.robot.v1.RobotService/ResourceNames'.replaceAll(RegExp(r"^(.*:\/\/)/",), "");

    //authRequest.entity = address;
    authRequest.credentials = credentials;

    final response = await authClient.authenticate(authRequest);
    return response;
  }
}
