import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/data_viam/data_source/data_viam_data_source.dart';
import 'package:viam_marine/domain/data_viam/service/viam_data_service.dart';
import 'package:viam_sdk/viam_sdk.dart';

@LazySingleton(as: ViamDataService)
class ViamDataServiceImpl extends ViamDataService {
  final DataViamDataSource _dataViamDataSource;

  ViamDataServiceImpl(this._dataViamDataSource);

  @override
  Future<ViamBinaryDataResponse> binaryDataByFilter({
    required ViamDataRequest viamDataRequest,
    bool? countOnly,
    bool? includeBinary,
  }) =>
      _dataViamDataSource.binaryDataByFilter(
        viamDataRequest,
        countOnly,
        includeBinary,
      );
}
