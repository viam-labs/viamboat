import 'package:injectable/injectable.dart';
import 'package:viam_marine/data/robot_manager/robot_manager.dart';
import 'package:viam_sdk/viam_sdk.dart';

@injectable
class DataViamDataSource {
  final RobotManager _robotManager;

  const DataViamDataSource(this._robotManager);

  Future<ViamTabularDataResponse> tabularDataByFilter({
    required ViamDataRequest viamDataRequest,
    bool? countOnly,
  }) async =>
      _robotManager.appViamClient.dataService.tabularDataByFilter(
        viamDataRequest: viamDataRequest,
        countOnly: countOnly,
      );
}
