import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/model/water_temperature.dart';
import 'package:viam_marine/domain/data_viam/service/viam_data_service.dart';

@injectable
class GetWaterTemperatureDataUseCase {
  final ViamDataService _dataService;

  const GetWaterTemperatureDataUseCase(this._dataService);

  Future<List<WaterTemperature>> call() => _dataService.getWaterTemperatureData();
}