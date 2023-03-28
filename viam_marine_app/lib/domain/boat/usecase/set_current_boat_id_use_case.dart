import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/boat/service/boat_service.dart';

@injectable
class SetCurrentBoatIdUseCase {
  final BoatService _boatService;

  const SetCurrentBoatIdUseCase(this._boatService);

  Future<void> call(String id) => _boatService.setCurrentBoatId(id);
}
