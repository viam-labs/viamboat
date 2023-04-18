import 'package:injectable/injectable.dart';
import 'package:viam_sdk/viam_sdk.dart';

@injectable
class DataViamDataSource {
  final Viam _viam;

  const DataViamDataSource(@Named('directDataClient') this._viam);

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

  Future<ViamTabularDataResponse> tabularDataByFilter({
    required ViamDataRequest viamDataRequest,
    bool? countOnly,
  }) async =>
      _viam.dataService.tabularDataByFilter(
        viamDataRequest: viamDataRequest,
        countOnly: countOnly,
      );

  Future<void> connectToViamApp({required String? accessToken}) => _viam.connect(
        url: 'app.viam.com',
        disableWebRtc: true,
        port: 443,
        secure: true,
        accessToken: accessToken,
      );
}
