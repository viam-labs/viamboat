import 'package:viam_marine/sdk/src/data/auth_rdk/data_source/auth_api_data_source.dart';
import 'package:viam_marine/sdk/src/data/auth_rdk/mapper/authenticate_response_to_auth_data_mapper.dart';
import 'package:viam_marine/sdk/src/domain/auth/model/auth_data.dart';
import 'package:viam_marine/sdk/src/domain/auth/service/auth_service.dart';

class ViamAuthServiceImpl implements ViamAuthService {
  final ViamAuthDataSource _authDataSource;
  final AuthenticateResponseToAuthDataMapper _authenticateResponseToAuthDataMapper;

  const ViamAuthServiceImpl(
    this._authDataSource,
    this._authenticateResponseToAuthDataMapper,
  );

  @override
  Future<ViamAuthData> getAuthData(String address, String payload) async {
    final response = await _authDataSource.getAuthData(
      address,
      payload,
    );
    return _authenticateResponseToAuthDataMapper(response);
  }
}
