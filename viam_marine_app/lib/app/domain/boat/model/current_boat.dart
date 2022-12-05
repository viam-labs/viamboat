import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'current_boat.g.dart';

@HiveType(typeId: 0)
class CurrentBoat extends Equatable {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String address;
  @HiveField(2)
  final String payload;

  const CurrentBoat({
    required this.name,
    required this.address,
    required this.payload,
  });

  @override
  List<Object?> get props => [
        name,
        address,
        payload,
      ];
}
