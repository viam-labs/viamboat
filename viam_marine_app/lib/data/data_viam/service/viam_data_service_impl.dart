import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/data_viam/data_source/data_viam_data_source.dart';
import 'package:viam_marine/domain/data_viam/model/depth_over_time.dart';
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

  @override
  Future<List<DepthOverTime>> getDepthOverTimeData() async {
    final mockData = [
      DepthOverTime(date: DateTime(2023, 14, 4, 9, 30), depth: 3),
      DepthOverTime(date: DateTime(2023, 14, 4, 10, 00), depth: 2),
      DepthOverTime(date: DateTime(2023, 14, 4, 10, 30), depth: 3),
      DepthOverTime(date: DateTime(2023, 14, 4, 11, 00), depth: 3),
      DepthOverTime(date: DateTime(2023, 14, 4, 11, 30), depth: 10),
      DepthOverTime(date: DateTime(2023, 14, 4, 12, 00), depth: 1),
      DepthOverTime(date: DateTime(2023, 14, 4, 12, 30), depth: 3),
      DepthOverTime(date: DateTime(2023, 14, 4, 13, 00), depth: 2),
      DepthOverTime(date: DateTime(2023, 14, 4, 13, 30), depth: 1),
    ];

    return Future.delayed(
      const Duration(seconds: 2),
      () => mockData,
    );
  }
}
