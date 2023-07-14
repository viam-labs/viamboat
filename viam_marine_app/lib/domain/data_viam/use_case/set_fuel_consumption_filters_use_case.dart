import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/model/water_filter.dart';
import 'package:viam_marine/domain/data_viam/service/viam_data_service.dart';

@injectable
class SetFuelConsumptionFilters {
  final ViamDataService _viamDataService;

  const SetFuelConsumptionFilters(this._viamDataService);

  void call(WaterFilter filter, String fuelSensorName) =>
      _viamDataService.setNewFuelConsumptionOverTimeFilters(filter, fuelSensorName);
}
