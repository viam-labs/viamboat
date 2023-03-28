import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/clear_cache/service/clear_cache_service.dart';

@injectable
class ClearCacheUseCase {
  final ClearCacheService _clearCacheService;

  const ClearCacheUseCase(this._clearCacheService);

  Future<void> call() => _clearCacheService.clearCache();
}
