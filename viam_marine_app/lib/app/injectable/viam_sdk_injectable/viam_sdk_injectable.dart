import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/service/current_boat_service.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

const timeout = Duration(seconds: 20);

@module
abstract class ViamModule {
  @preResolve
  @singleton
  Future<ViamSdk> getViamSdk(CurrentBoatService service) async {
    final currentBoat = await service.getCurrentBoat();
    return ViamSdk(
      currentBoat?.address ?? '',
      8080,
      currentBoat?.payload ?? '',
      true,
    );
  }
}
