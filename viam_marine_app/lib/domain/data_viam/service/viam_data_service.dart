import 'package:viam_sdk/viam_sdk.dart';

abstract class ViamDataService {
  Future<ViamBinaryDataResponse> binaryDataByFilter({
    required ViamDataRequest viamDataRequest,
    bool? countOnly,
    bool? includeBinary,
  });

  Future<ViamTabularDataResponse> tabularDataByFilter({
    required ViamDataRequest viamDataRequest,
    bool? countOnly,
  });

  Future<void> connectToViamApp({required String? accessToken});
}
