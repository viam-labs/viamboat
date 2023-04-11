import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/service_base/broadcaster/token_expired_broadcaster.dart';
import 'package:viam_marine/extensions/refresh_stream_mixin.dart';

@Singleton(as: TokenExpiredBroadcaster)
class TokenExpiredBroadcasterImpl extends TokenExpiredBroadcaster with RefreshStreamMixin<TokenExpiredEvent> {}
