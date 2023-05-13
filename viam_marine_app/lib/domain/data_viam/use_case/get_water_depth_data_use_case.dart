import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/model/water_depth.dart';
import 'package:viam_marine/domain/data_viam/service/viam_data_service.dart';

@injectable
class GetWaterDepthDataUseCase {
  final ViamDataService _dataService;

  const GetWaterDepthDataUseCase(this._dataService);

  Future<List<WaterDepth>> call() => _dataService.getWaterDepthData();
}