import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/app/domain/boat/service/boat_service.dart';
import 'package:viam_marine/app/domain/boat/store/boat_box.dart';

const key = 'boatKey';

@Injectable(as: BoatService)
class BoatServiceImpl implements BoatService {
  final BoatBox boatBox;

  BoatServiceImpl(this.boatBox);

  @override
  Future<void> addNewBoat({
    required String id,
    required String name,
    required String address,
    required String secret,
  }) async {
    final newBoat = ViamBoat(
      id: id,
      name: name,
      address: address,
      secret: secret,
    );

    await boatBox.write(
      key: key,
      value: newBoat,
    );
  }

  @override
  Future<List<ViamBoat>> getBoats() => boatBox.read();
}
