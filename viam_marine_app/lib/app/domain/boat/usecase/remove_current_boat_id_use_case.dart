import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/service/boat_service.dart';

@injectable
class RemoveCurrentBoatIdUseCase {
  final BoatService _boatService;

  const RemoveCurrentBoatIdUseCase(this._boatService);

  Future<void> call() => _boatService.removeCurrentBoatId();
}
