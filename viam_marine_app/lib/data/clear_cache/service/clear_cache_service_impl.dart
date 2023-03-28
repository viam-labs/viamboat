import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/app_viam/store/app_viam_store.dart';
import 'package:viam_marine/domain/clear_cache/service/clear_cache_service.dart';
import 'package:viam_marine/domain/viam/store/token_store.dart';

@Injectable(as: ClearCacheService)
class ClearCacheServiceImpl implements ClearCacheService {
  final TokenStore _tokenStore;
  final AppViamStore _appViamStore;

  ClearCacheServiceImpl(this._tokenStore, this._appViamStore);

  @override
  Future<void> clearCache() async {
    await _tokenStore.clearAll();
    await _appViamStore.clearAll();
  }
}
