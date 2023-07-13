import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/local_photo/service/local_photo_service.dart';

@injectable
class RemovePhotoForBoatUseCase {
  final LocalPhotoService _localPhotoService;

  const RemovePhotoForBoatUseCase(this._localPhotoService);

  Future<void> call(String currentBoatId) => _localPhotoService.cleanPhoto(currentBoatId);
}
