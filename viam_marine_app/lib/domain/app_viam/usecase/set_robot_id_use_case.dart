import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/app_viam/store/app_viam_store.dart';

@injectable
class SetRobotIdUseCase {
  final AppViamStore _appViamStore;

  const SetRobotIdUseCase(this._appViamStore);

  Future<void> call(String id) => _appViamStore.setRobotId(id);
}
