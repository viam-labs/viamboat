import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/model/water_filter.dart';
import 'package:viam_marine/domain/data_viam/service/viam_data_service.dart';

@injectable
class SetWaterTemperatureFiltersUseCase {
  final ViamDataService _dataService;

  SetWaterTemperatureFiltersUseCase(this._dataService);

  void call(WaterFilter filter) => _dataService.setNewTemperatureFilters(filter);
}