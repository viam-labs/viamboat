import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/auth/store/token_store.dart';

@injectable
class CheckIfHasTokenAndRefreshTokenUseCase {
  final TokenStore _store;

  const CheckIfHasTokenAndRefreshTokenUseCase(this._store);

  Future<bool> call() => _store.hasToken();
}
