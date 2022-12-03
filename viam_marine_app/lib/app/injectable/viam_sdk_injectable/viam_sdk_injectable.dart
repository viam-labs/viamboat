import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/data/boat/current_boat.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

const timeout = Duration(seconds: 20);

@module
abstract class ViamModule {
  @singleton
  ViamSdk getViamSdk(CurrentBoatService service) => ViamSdk(
        service.getUrl(),
        8080,
        service.getPayload(),
        true,
      );
}
