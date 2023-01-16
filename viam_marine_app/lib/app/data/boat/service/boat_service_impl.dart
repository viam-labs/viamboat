import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/app/domain/boat/service/boat_service.dart';
import 'package:viam_marine/app/domain/boat/store/boat_box.dart';
import 'package:viam_marine/app/domain/boat/store/current_boat_store.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

@Injectable(as: BoatService)
class BoatServiceImpl implements BoatService {
  final BoatBox boatBox;
  final CurrentBoatStore currentBoatStore;

  BoatServiceImpl(
    this.boatBox,
    this.currentBoatStore,
  );

  @override
  Future<void> addNewBoat({
    required String id,
    required String name,
    required String address,
    required String secret,
  }) async {
    final newBoat = ViamBoat(
      id: id.trim(),
      name: name.trim(),
      address: address.trim(),
      secret: secret.trim(),
    );

    await boatBox.write(
      key: id.trim(),
      value: newBoat,
    );
  }

  @override
  Future<List<ViamBoat>> getBoats() => boatBox.read();

  @override
  String? getCurrentBoatId() => currentBoatStore.getCurrentBoatId();

  @override
  Future<void> setCurrentBoatId(String id) => currentBoatStore.setCurrentBoatId(id);

  @override
  Future<void> checkConnection(String address, String secret) async {
    final sdk = await ViamSdk.getInstance(address, 8080, secret, true, false);

    final res = await sdk.getResourceNames(null, null);
    print(res);
  }

  @override
  Future<void> deleteBoat(String id) => boatBox.delete(key: id);

  @override
  Future<void> removeCurrentBoatId() => currentBoatStore.removeCurrentBoatId();
}
