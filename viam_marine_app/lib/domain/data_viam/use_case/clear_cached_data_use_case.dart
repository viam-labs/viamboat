import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/data_viam/service/viam_data_service.dart';

@injectable
class ClearCachedDataUseCase {
  final ViamDataService _viamDataService;

  const ClearCachedDataUseCase(this._viamDataService);

  void call() => _viamDataService.clearCachedData();
}
