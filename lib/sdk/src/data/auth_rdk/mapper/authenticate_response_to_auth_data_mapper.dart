import 'package:viam_marine/sdk/src/domain/auth/model/auth_data.dart';
import 'package:viam_marine/sdk/src/protos/viam/rpc/v1/auth.pbgrpc.dart';

class AuthenticateResponseToAuthDataMapper {
  ViamAuthData call(AuthenticateResponse response) => ViamAuthData(response.accessToken);
}
