import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/domain/sensor/model/viam_app_sensor_readings.dart';
import 'package:viam_marine/domain/sensor/service/sensor_service_impl.dart';
import 'package:viam_marine/domain/sensor/usecase/get_sensor_data_use_case.dart';

import 'get_sensor_data_use_case_test.mocks.dart';

@GenerateMocks([ViamAppSensorService])
void main() {
  late GetSensorDataUseCase getSensorDataUseCase;
  late ViamAppSensorService viamAppSensorService;

  setUp(() {
    viamAppSensorService = MockViamAppSensorService();
    getSensorDataUseCase = GetSensorDataUseCase(viamAppSensorService);
  });

  group('GetSensorDataUseCase', () {
    const resourceName = ViamAppResourceName(
      'namespace',
      'type',
      'subtype',
      'name',
    );

    test('gets sensor data successfully', () async {
      const readings = <String, double>{};
      const sensorReadings = ViamAppSensorReadings(
        'name',
        readings,
      );

      when(viamAppSensorService.getSensorData(resourceName)).thenAnswer(
        (_) async => sensorReadings,
      );

      final actualAnswer = await getSensorDataUseCase(resourceName);

      expect(actualAnswer, equals(sensorReadings));
    });

    test('gets data with failure and throws an error', () async {
      const error = 'error';

      when(viamAppSensorService.getSensorData(resourceName)).thenAnswer(
        (_) => Future.error(error),
      );

      await expectLater(getSensorDataUseCase(resourceName), throwsA(error));
    });
  });
}
