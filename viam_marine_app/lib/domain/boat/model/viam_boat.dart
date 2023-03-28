import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'viam_boat.g.dart';

@HiveType(typeId: 0)
class ViamBoat extends Equatable {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String? boatPhotoImagePath;

  const ViamBoat({
    required this.id,
    this.boatPhotoImagePath,
  });

  @override
  List<Object?> get props => [
        id,
        boatPhotoImagePath,
      ];
}
