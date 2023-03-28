import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/boat/broadcaster/boat_update_broadcaster.dart';
import 'package:viam_marine/extensions/refresh_stream_mixin.dart';

@LazySingleton(as: BoatUpdateBroadcaster)
class BoatChangeBroadcasterImpl extends BoatUpdateBroadcaster with RefreshStreamMixin<BoatUpdateEvent> {}
