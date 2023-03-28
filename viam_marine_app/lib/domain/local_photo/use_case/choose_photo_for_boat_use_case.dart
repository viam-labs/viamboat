import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/local_photo/service/local_photo_service.dart';

@injectable
class ChoosePhotoForBoatUseCase {
  final LocalPhotoService _localPhotoService;

  const ChoosePhotoForBoatUseCase(this._localPhotoService);

  Future<void> call(String currentBoatId) => _localPhotoService.choosePhoto(currentBoatId);
}
