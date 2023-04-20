import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/model/fuel_cunsumption_per_mile.dart';
import 'package:viam_marine/domain/data_viam/service/viam_data_service.dart';

@injectable
class GetFuelConsumptionPerMileDataUseCase {
  final ViamDataService _viamDataService;

  const GetFuelConsumptionPerMileDataUseCase(this._viamDataService);

  Future<List<FuelConsumptionPerMile>> call() => _viamDataService.getFuelConsumptionPerMileData();
}
