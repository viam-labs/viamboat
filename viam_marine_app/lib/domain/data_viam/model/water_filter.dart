import 'package:equatable/equatable.dart';

class WaterFilter extends Equatable {
  final int? minValue;
  final int? maxValue;
  final DateTime? minDate;
  final DateTime? maxDate;
  final int interval;

  const WaterFilter({
    this.minValue,
    this.maxValue,
    this.minDate,
    this.maxDate,
    this.interval = 5,
  });

  WaterFilter copyWith({
    int? newMinValue,
    int? newMaxValue,
    DateTime? newMinDate,
    DateTime? newMaxDate,
    int? newInterval,
  }) =>
      WaterFilter(
        minValue: newMinValue ?? minValue,
        maxValue: newMaxValue ?? maxValue,
        minDate: newMinDate ?? minDate,
        maxDate: newMaxDate ?? maxDate,
        interval: newInterval ?? interval,
      );

  @override
  List<Object?> get props => [
        minValue,
        maxValue,
        minDate,
        maxDate,
        interval,
      ];
}
