import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_boats_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_current_boat_id_use_case.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';
import 'package:collection/collection.dart';

const timeout = Duration(seconds: 20);

@module
abstract class ViamModule {
<<<<<<< HEAD
  @preResolve
=======
  //TODO: REPLACE CREDS
>>>>>>> 53e9141 ([VIAM-44] implement channels)
  @singleton
<<<<<<< HEAD
  Future<ViamSdk> getViamSdk(
    GetBoatsUseCase getBoatsUseCase,
    GetCurrentBoatIdUseCase getCurrentBoatIdUseCase,
  ) async {
    final boats = await getBoatsUseCase();
    final currentBoatId = getCurrentBoatIdUseCase();

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
=======
  ViamSdk getViamSdk() => ViamSdk(
        'camera-main.xl6oiexz3d.local.viam.cloud',
        8080,
        '2824dhqonsdzjw09tphtlh7cvu1woushvvl4cofca4mviabh',
        true,
      );
>>>>>>> 3774e27 ([VIAM-44] Code refactor)
}
