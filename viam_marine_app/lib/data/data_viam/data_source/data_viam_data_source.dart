import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/robot_manager/robot_manager.dart';
import 'package:viam_sdk/viam_sdk.dart';

@injectable
class DataViamDataSource {
  final RobotManager _robotManager;

  const DataViamDataSource(this._robotManager);

  Future<ViamBinaryDataResponse> binaryDataByFilter(
    ViamDataRequest request,
    bool? countOnly,
    bool? includeBinary,
  ) =>
      _robotManager.appViamClient.dataService.binaryDataByFilter(
        viamDataRequest: request,
        countOnly: countOnly,
        includeBinary: includeBinary,
      );

  Future<ViamTabularDataResponse> tabularDataByFilter({
    required ViamDataRequest viamDataRequest,
    bool? countOnly,
  }) async =>
      _robotManager.appViamClient.dataService.tabularDataByFilter(
        viamDataRequest: viamDataRequest,
        countOnly: countOnly,
      );
}
