import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/boat/service/boat_service.dart';

@injectable
class GetCurrentBoatIdUseCase {
  final BoatService _boatService;

  const GetCurrentBoatIdUseCase(this._boatService);

  String? call() => _boatService.getCurrentBoatId();
}
