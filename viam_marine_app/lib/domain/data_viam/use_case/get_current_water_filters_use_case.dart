import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/model/filter_type.dart';
import 'package:viam_marine/domain/data_viam/model/water_filter.dart';
import 'package:viam_marine/domain/data_viam/service/viam_data_service.dart';

@injectable
class GetCurrentWaterFiltersUseCase {
  final ViamDataService _dataService;

  const GetCurrentWaterFiltersUseCase(this._dataService);

  WaterFilter call(FiltersType type) => _dataService.getWaterFilters(type);
}