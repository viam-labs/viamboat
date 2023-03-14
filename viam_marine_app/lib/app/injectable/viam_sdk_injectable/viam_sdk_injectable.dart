import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_boats_use_case.dart';
import 'package:viam_marine/app/domain/boat/usecase/get_current_boat_id_use_case.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';
import 'package:collection/collection.dart';

const timeout = Duration(seconds: 20);

@module
abstract class ViamModule {
  @singleton
  @preResolve
  Future<ViamSdk> getViamSdk(
    GetBoatsUseCase getBoatsUseCase,
    GetCurrentBoatIdUseCase getCurrentBoatIdUseCase,
  ) async {
    final boats = await getBoatsUseCase();
    final currentBoatId = getCurrentBoatIdUseCase();

    final currentBoat = boats.firstWhereOrNull(
      (boat) => boat.id == currentBoatId,
    );

    final instance = await ViamSdk.getInstance(
      url: '',
      port: 8080,
      secure: true,
      disableWebRtc: currentBoat == null,
    );

    return instance;
  }
}

@module
abstract class ViamSdkModule {
  @singleton
  Viam get viam => Viam.instance();
}
