import 'package:injectable/injectable.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@injectable
class DataViamDataSource {
  final Viam _viam;

  const DataViamDataSource(this._viam);

  Future<ViamBinaryDataResponse> binaryDataByFilter() => _viam.dataService.binaryDataByFilter();
}
