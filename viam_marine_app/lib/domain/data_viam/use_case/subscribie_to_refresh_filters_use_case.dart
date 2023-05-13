import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/model/filter_event.dart';
import 'package:viam_marine/domain/data_viam/service/viam_data_service.dart';

@injectable
class SubscribeToRefreshFiltersUseCase {
  final ViamDataService _dataService;

  const SubscribeToRefreshFiltersUseCase(this._dataService);

  Stream<FilterEvent> call() => _dataService.filterStream;
}