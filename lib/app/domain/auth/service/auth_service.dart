import 'package:viam_marine/app/domain/auth/model/viam_app_auth_data.dart';

abstract class AuthService {
  Future<ViamAppAuthData> getAuthData(String address, String payload);
}
