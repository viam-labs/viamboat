import 'package:injectable/injectable.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@injectable
class DataViamDataSource {
  final Viam _viam;

  const DataViamDataSource(this._viam);

  Future<ViamBinaryDataResponse> binaryDataByFilter(
    ViamDataRequest request,
    bool? countOnly,
    bool? includeBinary,
  ) =>
      _viam.dataService.binaryDataByFilter(
        viamDataRequest: request,
        countOnly: countOnly,
        includeBinary: includeBinary,
      );
}
