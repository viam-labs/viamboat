import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/boat/service/boat_service.dart';

@injectable
class AddNewBoatUseCase {
  final BoatService _boatService;

  const AddNewBoatUseCase(this._boatService);

  Future<void> call({required String id, String? photoPath}) => _boatService.addNewBoat(
        id: id,
        photoPath: photoPath,
      );
}
