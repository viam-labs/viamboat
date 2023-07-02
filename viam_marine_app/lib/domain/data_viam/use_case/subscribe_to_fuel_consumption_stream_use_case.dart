import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/model/fuel_consumption_over_time.dart';
import 'package:viam_marine/domain/data_viam/service/viam_data_service.dart';

@injectable
class SubscribeToFuelConsumptionStreamUseCase {
  final ViamDataService _dataService;

  const SubscribeToFuelConsumptionStreamUseCase(this._dataService);

  Stream<List<FuelConsumptionOverTime>> call({required String fuelSensorName}) =>
      _dataService.getFuelConsumptionOverTimeStream(fuelSensorName: fuelSensorName);
}
