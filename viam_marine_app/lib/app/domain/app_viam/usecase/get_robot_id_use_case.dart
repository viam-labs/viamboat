import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/app_viam/store/app_viam_store.dart';

@injectable
class GetRobotIdUseCase {
  final AppViamStore _appViamStore;

  const GetRobotIdUseCase(this._appViamStore);

  String? call() => _appViamStore.getRobotId();
}
