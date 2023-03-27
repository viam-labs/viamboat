import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/data_viam/service/viam_data_service.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@injectable
class GetBinaryDataByFilterUseCase {
  final ViamDataService _viamDataService;

  const GetBinaryDataByFilterUseCase(this._viamDataService);

  Future<ViamBinaryDataResponse> call({
    required ViamDataRequest viamDataRequest,
    bool? countOnly,
    bool? includeBinary,
  }) =>
      _viamDataService.binaryDataByFilter(
        viamDataRequest: viamDataRequest,
        countOnly: countOnly,
        includeBinary: includeBinary,
      );
}
