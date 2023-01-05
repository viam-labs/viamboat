import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/service/boat_service.dart';

@injectable
class AddNewBoatUseCase {
  final BoatService _boatService;

  const AddNewBoatUseCase(this._boatService);

  Future<void> call({
    required String id,
    required String name,
    required String address,
    required String secret,
  }) =>
      _boatService.addNewBoat(
        id: id,
        name: name,
        address: address,
        secret: secret,
      );
}
