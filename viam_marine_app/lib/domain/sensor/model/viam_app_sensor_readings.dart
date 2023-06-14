import 'package:equatable/equatable.dart';
import 'package:viam_marine/data/sensor/model/sensor_readings_dto.dart';

class ViamAppSensorReadings extends Equatable {
  final String name;
  final Map<String, double> readings;

  const ViamAppSensorReadings(
    this.name,
    this.readings,
  );

  @override
  List<Object?> get props => [
        name,
        readings,
      ];
}

extension ViamAppSensorReadingsMapper on SensorReadingsDto {
  ViamAppSensorReadings toDomain() => ViamAppSensorReadings(
        name,
        _getReadings(readings),
      );

  Map<String, double> _getReadings(Map<String, dynamic> readings) {
    final result = <String, double>{};

    readings.forEach((key, value) {
      if (value is double) {
        result[key] = value;
      }
    });

    return result;
  }
}
