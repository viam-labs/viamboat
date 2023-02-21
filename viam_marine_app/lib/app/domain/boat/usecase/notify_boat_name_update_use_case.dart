import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/broadcaster/boat_update_broadcaster.dart';

@injectable
class NotifyBoatNameUpdateUseCase {
  final BoatUpdateBroadcaster _boatUpdateBroadcaster;

  const NotifyBoatNameUpdateUseCase(this._boatUpdateBroadcaster);

  void call() => _boatUpdateBroadcaster.notifyRefreshStream(BoatUpdateEvent.nameChanged);
}
