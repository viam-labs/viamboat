
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/boat/service/boat_service.dart';

@injectable
class ChangeBoatNameUseCase {
  final BoatService _boatService;

  const ChangeBoatNameUseCase(this._boatService);

  Future<void> call({
    required String id,
    required String name,
  }) =>
      _boatService.changeBoatName(
        id: id,
        newName: name,
      );
}
