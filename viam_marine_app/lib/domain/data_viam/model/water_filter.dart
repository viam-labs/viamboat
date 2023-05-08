import 'package:equatable/equatable.dart';

class WaterFilter extends Equatable {
  final double? minValue;
  final double? maxValue;
  final DateTime? minDate;
  final DateTime? maxDate;

  const WaterFilter({
    this.minValue,
    this.maxValue,
    this.minDate,
    this.maxDate,
  });

  WaterFilter copyWith({
    double? newMinValue,
    double? newMaxValue,
    DateTime? newMinDate,
    DateTime? newMaxDate,
  }) =>
      WaterFilter(
        minValue: newMinValue ?? minValue,
        maxValue: newMaxValue ?? maxValue,
        minDate: newMinDate ?? minDate,
        maxDate: newMaxDate ?? maxDate,
      );

  @override
  List<Object?> get props =>
      [
        minValue,
        maxValue,
        minDate,
        maxDate,
      ];
}
