import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/data_viam/data_source/data_viam_data_source.dart';
import 'package:viam_marine/domain/data_viam/service/viam_data_service.dart';
import 'package:viam_marine/domain/service_base/service/service_base.dart';
import 'package:viam_sdk/viam_sdk.dart';

@LazySingleton(as: ViamDataService)
class ViamDataServiceImpl extends ServiceBase implements ViamDataService {
  final DataViamDataSource _dataViamDataSource;

  ViamDataServiceImpl(
    super.tokenExpiredBroadcaster,
    this._dataViamDataSource,
  );

  @override
  Future<ViamBinaryDataResponse> binaryDataByFilter({
    required ViamDataRequest viamDataRequest,
    bool? countOnly,
    bool? includeBinary,
  }) async =>
      super(() => _dataViamDataSource.binaryDataByFilter(
            viamDataRequest,
            countOnly,
            includeBinary,
          ));

  @override
  Future<ViamTabularDataResponse> tabularDataByFilter({
    required ViamDataRequest viamDataRequest,
    bool? countOnly,
  }) async =>
      super(() => _dataViamDataSource.tabularDataByFilter(
            viamDataRequest: viamDataRequest,
            countOnly: countOnly,
          ));

  @override
  Future<void> connectToViamApp({required String? accessToken}) async => super(
        () => _dataViamDataSource.connectToViamApp(accessToken: accessToken),
      );
}
