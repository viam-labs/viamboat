import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/service/boat_service.dart';

@injectable
class DeleteBoatUseCase {
  final BoatService _boatService;

  const DeleteBoatUseCase(this._boatService);

  Future<void> call(String id) => _boatService.deleteBoat(id);
}
