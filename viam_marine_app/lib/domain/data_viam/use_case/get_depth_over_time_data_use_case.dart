import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/model/depth_over_time.dart';
import 'package:viam_marine/domain/data_viam/service/viam_data_service.dart';

@injectable
class GetDepthOverTimeDataUseCase {
  final ViamDataService _dataService;

  const GetDepthOverTimeDataUseCase(this._dataService);

  Future<List<DepthOverTime>> call() => _dataService.getDepthOverTimeData();
}
