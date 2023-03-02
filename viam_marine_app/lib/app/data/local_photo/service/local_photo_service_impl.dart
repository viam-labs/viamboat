import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/data/local_photo/data_source/local_photo_data_source.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/app/domain/boat/store/boat_box.dart';
import 'package:viam_marine/app/domain/local_photo/service/local_photo_service.dart';

@Injectable(as: LocalPhotoService)
class LocalPhotoServiceImpl implements LocalPhotoService {
  final LocalPhotoDataSource _dataSource;
  final BoatBox boatBox;

  LocalPhotoServiceImpl(
    this._dataSource,
    this.boatBox,
  );

  @override
  Future<void> capturePhoto(String currentBoatId) async {
    final photo = await _dataSource.capturePhoto();
    if (photo == null) return;
    await _assignPhotoPathToBoat(photo.path, currentBoatId);
  }

  @override
  Future<void> choosePhoto(String currentBoatId) async {
    final photo = await _dataSource.pickPhoto();
    if (photo == null) return;
    await _assignPhotoPathToBoat(photo.path, currentBoatId);
  }

  Future<void> _assignPhotoPathToBoat(String path, String currentBoatId) async {
    final boats = await boatBox.read();

    final boatToChange = boats.firstWhere((boat) => boat.id == currentBoatId);

    final newBoat = ViamBoat(
      id: boatToChange.id,
      name: boatToChange.name,
      address: boatToChange.address,
      secret: boatToChange.secret,
      boatPhotoImagePath: path,
    );

    await boatBox.write(
      key: boatToChange.id,
      value: newBoat,
    );
  }
}
