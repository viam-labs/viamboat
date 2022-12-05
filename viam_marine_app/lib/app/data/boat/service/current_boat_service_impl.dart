import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/model/current_boat.dart';
import 'package:viam_marine/app/domain/boat/service/current_boat_service.dart';
import 'package:viam_marine/app/domain/boat/store/current_boat_box.dart';

const key = 'boatKey';

@Injectable(as: CurrentBoatService)
class CurrentBoatServiceImpl implements CurrentBoatService {
  final CurrentBoatBox currentBoatBox;

  CurrentBoatServiceImpl(this.currentBoatBox);

  @override
  Future<void> setCurrentBoat({
    required String name,
    required String address,
    required String payload,
  }) async {
    final currentBoat = CurrentBoat(
      name: name,
      address: address,
      payload: payload,
    );

    await currentBoatBox.write(
      key: key,
      value: currentBoat,
    );
  }

  @override
  Future<CurrentBoat?> getCurrentBoat() => currentBoatBox.read(key: key);
}
