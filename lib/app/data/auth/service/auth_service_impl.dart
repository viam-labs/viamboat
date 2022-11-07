import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/data/auth/data_source/auth_data_source.dart';
import 'package:viam_marine/app/data/auth/mapper/viam_auth_data_to_viam_app_auth_data_mapper.dart';
import 'package:viam_marine/app/domain/auth/model/viam_app_auth_data.dart';
import 'package:viam_marine/app/domain/auth/service/auth_service.dart';

@Injectable(as: AuthService)
class AuthServiceImpl implements AuthService {
  final AuthDataSource _authDataSource;
  final ViamAuthDataToViamAppAuthDataMapper _viamAuthDataToViamAppAuthDataMapper;

  const AuthServiceImpl(
    this._authDataSource,
    this._viamAuthDataToViamAppAuthDataMapper,
  );

  @override
  Future<ViamAppAuthData> getAuthData(
    String address,
    String payload,
  ) async {
    final authDataDto = await _authDataSource.getAuthData(address, payload);
    return _viamAuthDataToViamAppAuthDataMapper(authDataDto);
  }
}
