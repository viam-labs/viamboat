abstract class LocalPhotoService {
  Future<void> capturePhoto(String currentBoatId);

  Future<void> choosePhoto(String currentBoatId);

  Future<void> cleanPhoto(String currentBoatId);
}
