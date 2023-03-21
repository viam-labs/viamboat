import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/app_viam/store/app_viam_store.dart';

@injectable
class GetOrganizationIdUseCase {
  final AppViamStore _appViamStore;

  const GetOrganizationIdUseCase(this._appViamStore);

  String? call() => _appViamStore.getOrganizationId();
}
