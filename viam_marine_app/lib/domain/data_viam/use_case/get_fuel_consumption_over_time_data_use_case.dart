import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/model/fuel_consumption_over_time.dart';
import 'package:viam_marine/domain/data_viam/service/viam_data_service.dart';

@injectable
class GetFuelConsumptionOverTimeDataUseCase {
  final ViamDataService _viamDataService;

  const GetFuelConsumptionOverTimeDataUseCase(this._viamDataService);

  Future<List<FuelConsumptionOverTime>> call() => _viamDataService.getFuelConsumptionOverTimeData();
}
