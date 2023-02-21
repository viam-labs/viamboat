import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/broadcaster/boat_update_broadcaster.dart';

@injectable
class SubscribeToBoatUpdateStreamUseCase {
  final BoatUpdateBroadcaster _boatUpdateBroadcaster;

  const SubscribeToBoatUpdateStreamUseCase(this._boatUpdateBroadcaster);

  Stream<BoatUpdateEvent> call() => _boatUpdateBroadcaster.getRefreshStream();
}
