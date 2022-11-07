import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/auth/model/viam_app_auth_data.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@injectable
class ViamAuthDataToViamAppAuthDataMapper {
  ViamAppAuthData call(ViamAuthData authData) => ViamAppAuthData(authData.accessToken);
}
