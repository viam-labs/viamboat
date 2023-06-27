import 'package:equatable/equatable.dart';

class FuelConsumptionDto extends Equatable {
  final DateTime date;
  final double level;
  final double capacity;
  final double speed;

  const FuelConsumptionDto({
    required this.date,
    required this.level,
    required this.capacity,
    required this.speed,
  });

  @override
  List<Object?> get props => [
        date,
        level,
        capacity,
        speed,
      ];
}
