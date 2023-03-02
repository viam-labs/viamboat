import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'viam_boat.g.dart';

@HiveType(typeId: 0)
class ViamBoat extends Equatable {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String address;
  @HiveField(3)
  final String secret;
  @HiveField(4)
  final String? boatPhotoImagePath;

  const ViamBoat({
    required this.id,
    required this.name,
    required this.address,
    required this.secret,
    this.boatPhotoImagePath,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        address,
        secret,
        boatPhotoImagePath,
      ];
}
