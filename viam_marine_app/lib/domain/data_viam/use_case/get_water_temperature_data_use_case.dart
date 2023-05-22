import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/model/water_temperature.dart';
import 'package:viam_marine/domain/data_viam/service/viam_data_service.dart';

@injectable
class GetWaterTemperatureDataUseCase {
  final ViamDataService _dataService;

  const GetWaterTemperatureDataUseCase(this._dataService);

  Future<List<WaterTemperature>> call({
    required String locationId,
    required String robotName,
    String? tempSensorName,
    String? movementSensorName,
  }) =>
      _dataService.getWaterTemperatureData(
        locationId: locationId,
        robotName: robotName,
        tempSensorName: tempSensorName,
        movementSensorName: movementSensorName,
      );
}
