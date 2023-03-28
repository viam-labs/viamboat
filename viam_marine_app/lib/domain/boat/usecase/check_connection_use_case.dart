import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/boat/service/boat_service.dart';

@injectable
class CheckConnectionUseCase {
  final BoatService _boatService;

  const CheckConnectionUseCase(this._boatService);

  Future<void> call(String address, String secret) => _boatService.checkConnection(
        address,
        secret,
      );
}
