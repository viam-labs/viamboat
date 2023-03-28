import 'package:injectable/injectable.dart';
import 'package:viam_marine/domain/local_photo/service/local_photo_service.dart';

@injectable
class CapturePhotoForBoatUseCase {
  final LocalPhotoService _localPhotoService;

  const CapturePhotoForBoatUseCase(this._localPhotoService);

  Future<void> call(String currentBoatId) => _localPhotoService.capturePhoto(currentBoatId);
}
