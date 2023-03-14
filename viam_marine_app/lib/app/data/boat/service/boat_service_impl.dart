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
    String? photoPath,
  }) async {
    final newBoat = ViamBoat(id: id, boatPhotoImagePath: photoPath);

    await boatBox.write(
      key: id,
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
    final sdk = await ViamSdk.getInstance(
      url: address,
      port: 8080,
      payload: secret,
      secure: true,
      disableWebRtc: false,
    );
    await Future.delayed(const Duration(seconds: 1));
    await sdk.getResourceNames(null, null);
  }

  @override
  Future<void> deleteBoat(String id) => boatBox.delete(key: id);

  @override
  Future<void> removeCurrentBoatId() => currentBoatStore.removeCurrentBoatId();

  @override
  Future<void> changeBoatName({
    required String id,
    required String newName,
  }) async {
    final boats = await boatBox.read();

    final boatToChange = boats.firstWhere((boat) => boat.id == id);

    final newBoat = ViamBoat(
      id: boatToChange.id.trim(),
    );

    await boatBox.write(
      key: id.trim(),
      value: newBoat,
    );
  }
}
