import 'package:viam_marine/sdk/src/domain/auth/model/auth_data.dart';

abstract class ViamAuthService {
  Future<ViamAuthData> getAuthData();
}
