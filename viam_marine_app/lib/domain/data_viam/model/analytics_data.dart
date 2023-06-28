import 'package:equatable/equatable.dart';

enum AnalyticsType {
  waterTemperature,
  waterDepth,
  fuelConsumptionOverTime,
  fuelConsumptionPerMile,
  depthOverTime,
}

class AnalyticsData extends Equatable {
  final AnalyticsType type;
  final List<String?> sensorNames;

  const AnalyticsData({
    required this.type,
    required this.sensorNames,
  });

  @override
  List<Object?> get props => [
        type,
        sensorNames,
      ];
}
