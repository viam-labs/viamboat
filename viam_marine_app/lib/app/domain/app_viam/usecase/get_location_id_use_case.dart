import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/app_viam/store/app_viam_store.dart';

@injectable
class GetLocationIdUseCase {
  final AppViamStore _appViamStore;

  const GetLocationIdUseCase(this._appViamStore);

  String? call() => _appViamStore.getLocationId();
}
