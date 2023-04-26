import 'package:equatable/equatable.dart';

class FuelConsumptionOverTime extends Equatable {
  final double value;
  final DateTime date;

  const FuelConsumptionOverTime({
    required this.value,
    required this.date,
  });

  @override
  List<Object?> get props => [
        value,
        date,
      ];
}
