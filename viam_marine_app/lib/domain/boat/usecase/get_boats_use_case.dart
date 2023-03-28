import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/domain/boat/service/boat_service.dart';

@injectable
class GetBoatsUseCase {
  final BoatService _boatService;

  const GetBoatsUseCase(this._boatService);

  Future<List<ViamBoat>> call() => _boatService.getBoats();
}
