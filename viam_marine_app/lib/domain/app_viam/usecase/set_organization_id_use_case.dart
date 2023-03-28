import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/app_viam/store/app_viam_store.dart';

@injectable
class SetOrganizationIdUseCase {
  final AppViamStore _appViamStore;

  const SetOrganizationIdUseCase(this._appViamStore);

  Future<void> call(String id) => _appViamStore.setOrganizationId(id);
}
