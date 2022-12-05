import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/service/current_boat_service.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

const timeout = Duration(seconds: 20);

@module
abstract class ViamModule {
  @singleton
  ViamSdk getViamSdk(CurrentBoatService service) => ViamSdk(
        '',
        8080,
        '',
        true,
      );
}
