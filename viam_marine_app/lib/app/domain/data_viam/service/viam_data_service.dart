import 'package:viam_marine/sdk/viam_sdk.dart';

abstract class ViamDataService {
  Future<ViamBinaryDataResponse> binaryDataByFilter({
    required ViamDataRequest viamDataRequest,
    bool? countOnly,
    bool? includeBinary,
  });
}
