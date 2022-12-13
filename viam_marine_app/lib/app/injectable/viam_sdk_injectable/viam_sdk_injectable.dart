import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/service/boat_service.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';
import 'package:collection/collection.dart';

const timeout = Duration(seconds: 20);

@module
abstract class ViamModule {
  @preResolve
  @singleton
  Future<ViamSdk> getViamSdk(BoatService service) async {
    final boats = await service.getBoats();
    final currentBoatId = service.getCurrentBoatId();

    final currentBoat = boats.firstWhereOrNull(
      (boat) => boat.id == currentBoatId,
    );

    return ViamSdk(
      currentBoat?.address ?? '',
      8080,
      currentBoat?.secret,
      true,
    );
  }
}
