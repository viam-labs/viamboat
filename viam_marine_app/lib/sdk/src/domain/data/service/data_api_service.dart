import 'package:grpc/grpc_connection_interface.dart';
import 'package:viam_marine/sdk/src/domain/data/models/viam_tabular_data_response.dart';
import 'package:viam_marine/sdk/src/domain/interceptors/auth_header_interceptor.dart';
import 'package:viam_marine/sdk/src/gen/app/data/v1/data.pbgrpc.dart';

class ViamDataService {
  final ClientChannelBase _client;
  final AuthHeaderInterceptor _authHeaderInterceptor;

  ViamDataService(
    this._client,
    this._authHeaderInterceptor,
  );

  Future<ViamTabularDataResponse> tabularDataByFilter({DataRequest? dataRequest, bool? countOnly}) async {
    final stub = DataServiceClient(
      _client,
      interceptors: [_authHeaderInterceptor],
    );

    final getTabularDataRequest = TabularDataByFilterRequest(dataRequest: dataRequest, countOnly: countOnly);

    final response = await stub.tabularDataByFilter(getTabularDataRequest);

    return response.toDomain();
  }
}
