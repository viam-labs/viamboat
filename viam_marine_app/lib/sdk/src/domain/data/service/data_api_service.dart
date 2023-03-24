import 'package:viam_marine/sdk/src/domain/data/models/viam_tabular_data_response.dart';
import 'package:viam_marine/sdk/src/gen/app/data/v1/data.pbgrpc.dart';

class ViamDataService {
  final DataServiceClient _dataServiceClient;
  ViamDataService(
    this._dataServiceClient,
  );

  Future<ViamTabularDataResponse> tabularDataByFilter({DataRequest? dataRequest, bool? countOnly}) async {
    final getTabularDataRequest = TabularDataByFilterRequest(
      dataRequest: DataRequest(filter: Filter()),
      countOnly: countOnly,
    );

    final response = await _dataServiceClient.tabularDataByFilter(getTabularDataRequest);

    return response.toDomain();
  }
}
