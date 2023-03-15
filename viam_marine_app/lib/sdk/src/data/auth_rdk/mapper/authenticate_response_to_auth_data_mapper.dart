import 'package:viam_marine/sdk/src/data/auth_rdk/model/auth_data.dart';
import 'package:viam_marine/sdk/src/gen/proto/rpc/v1/auth.pbgrpc.dart';

class AuthenticateResponseToAuthDataMapper {
  ViamAuthData call(AuthenticateResponse response) => ViamAuthData(response.accessToken);
}
