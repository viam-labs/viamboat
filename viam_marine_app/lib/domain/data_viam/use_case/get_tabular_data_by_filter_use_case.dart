import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/service/viam_data_service.dart';
import 'package:viam_sdk/viam_sdk.dart';

@injectable
class GetTabularDataByFilterUseCase {
  final ViamDataService _viamDataService;

  const GetTabularDataByFilterUseCase(this._viamDataService);

  Future<ViamTabularDataResponse> call({required ViamDataRequest viamDataRequest, bool? countOnly}) =>
      _viamDataService.tabularDataByFilter(
        viamDataRequest: viamDataRequest,
        countOnly: countOnly,
      );
}
