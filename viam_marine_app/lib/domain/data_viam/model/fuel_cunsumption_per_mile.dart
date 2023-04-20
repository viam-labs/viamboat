import 'package:equatable/equatable.dart';

class FuelConsumptionPerMile extends Equatable {
  final DateTime date;
  final double value;

  const FuelConsumptionPerMile({
    required this.date,
    required this.value,
  });

  @override
  List<Object?> get props => [
        date,
        value,
      ];
}
