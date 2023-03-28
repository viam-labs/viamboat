import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/viam/store/token_store.dart';

@injectable
class GetTokenOrNullUseCase {
  final TokenStore _store;

  const GetTokenOrNullUseCase(this._store);

  Future<String?> call() => _store.getTokenOrNull();
}
