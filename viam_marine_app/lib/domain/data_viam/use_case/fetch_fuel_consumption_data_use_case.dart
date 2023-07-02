import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/service/viam_data_service.dart';

@injectable
class FetchFuelConsumptionDataUseCase {
  final ViamDataService _dataService;

  const FetchFuelConsumptionDataUseCase(this._dataService);

  Future<void> call({
    required String locationId,
    required String robotName,
    String? fuelSensorName,
    String? movementSensorName,
  }) =>
      _dataService.fetchFuelConsumptionOverTimeData(
        locationId: locationId,
        robotName: robotName,
        fuelSensorName: fuelSensorName,
        movementSensorName: movementSensorName,
      );
}
