import 'package:viam_marine/sdk/src/domain/data/models/viam_binary_data_response.dart';

abstract class ViamDataService {
  Future<ViamBinaryDataResponse> binaryDataByFilter();
}
