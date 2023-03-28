import 'package:flutter_test/flutter_test.dart';
import 'package:viam_marine/app/data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart';
import 'package:viam_marine/app/domain/sensor/model/viam_app_sensor_readings.dart';
import 'package:viam_sdk/viam_sdk.dart';

void main() {
  late ViamSensorReadingsToViamAppSensorReadingsMapper viamSensorReadingsToViamAppSensorReadingsMapper;

  setUp(() {
    viamSensorReadingsToViamAppSensorReadingsMapper = ViamSensorReadingsToViamAppSensorReadingsMapper();
  });

  group('When map from ViamSensorReading to ViamAppSensorReading', () {
    test('mapper return correct values', () {
      const dto = ViamSensorReadings(
        'namespace',
        'type',
        'subtype',
        'name',
        {
          'key': 0.0,
        },
      );

      final expectedAnswer = ViamAppSensorReadings(
        dto.namespace,
        dto.type,
        dto.subtype,
        dto.name,
        dto.readings,
      );

      final actualAnswer = viamSensorReadingsToViamAppSensorReadingsMapper(dto);

      expect(actualAnswer, equals(expectedAnswer));
    });
  });
}
