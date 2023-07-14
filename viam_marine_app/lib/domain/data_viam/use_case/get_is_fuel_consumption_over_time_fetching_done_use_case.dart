import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/service/viam_data_service.dart';

@injectable
class GetIsFuelConsumptionOverTimeFetchingDoneUseCase {
  final ViamDataService _dataService;

  const GetIsFuelConsumptionOverTimeFetchingDoneUseCase(this._dataService);

  bool call(String? fuelSensorName) => _dataService.getIsFuelConsumptionOverTimeFetchingDone(fuelSensorName);
}
