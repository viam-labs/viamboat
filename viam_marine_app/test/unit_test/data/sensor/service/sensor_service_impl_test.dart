import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/app/data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart';
import 'package:viam_marine/app/data/sensor/data_source/sensor_api_data_source.dart';
import 'package:viam_marine/app/data/sensor/mapper/viam_sensor_readings_to_viam_app_sensor_readings.dart';
import 'package:viam_marine/app/data/sensor/service/sensor_service_impl.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/domain/sensor/model/viam_app_sensor_readings.dart';
import 'package:viam_marine/app/domain/sensor/service/sensor_service_impl.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';
import 'sensor_service_impl_test.mocks.dart';

@GenerateMocks([
  SensorDataSource,
  ViamAppResourceNameToViamResourceNameMapper,
  ViamSensorReadingsToViamAppSensorReadingsMapper,
])
void main() {
  late SensorDataSource sensorDataSource;
  late ViamAppResourceNameToViamResourceNameMapper viamAppResourceNameToViamResourceNameMapper;
  late ViamSensorReadingsToViamAppSensorReadingsMapper viamSensorReadingsToViamAppSensorReadingsMapper;
  late SensorService sensorService;

  setUp(() {
    sensorDataSource = MockSensorDataSource();
    viamAppResourceNameToViamResourceNameMapper = MockViamAppResourceNameToViamResourceNameMapper();
    viamSensorReadingsToViamAppSensorReadingsMapper = MockViamSensorReadingsToViamAppSensorReadingsMapper();
    sensorService = SensorServiceImpl(
      sensorDataSource,
      viamAppResourceNameToViamResourceNameMapper,
      viamSensorReadingsToViamAppSensorReadingsMapper,
    );
  });

  group('App sensor service', () {
    test('gets data successfully', () async {
      const resourceName = ViamAppResourceName(
        'namespace',
        'type',
        'subtype',
        'name',
      );

      const resourceNamesDto = ViamResourceName(
        'namespace',
        'type',
        'subtype',
        'name',
      );

      const viamSensorReadings = ViamSensorReadings(
        'namespace',
        'type',
        'subtype',
        'name',
        {'key': 0.0},
      );

      const viamAppSensorReadings = ViamAppSensorReadings(
        'namespace',
        'type',
        'subtype',
        'name',
        {'key': 0.0},
      );

      const expectedAnswer = [
        ViamAppSensorReadings(
          'namespace',
          'type',
          'subtype',
          'name',
          {'key': 0.0},
        ),
      ];

      when(viamAppResourceNameToViamResourceNameMapper(resourceName)).thenReturn(resourceNamesDto);

      when(sensorDataSource.getSensorData([resourceNamesDto])).thenAnswer(
        (_) async => [viamSensorReadings],
      );

      when(viamSensorReadingsToViamAppSensorReadingsMapper(viamSensorReadings)).thenReturn(viamAppSensorReadings);

      final actualAnswer = await sensorService.getSensorData([resourceName]);

      expect(actualAnswer, equals(expectedAnswer));
    });

    test('gets data with failure and throws an error', () async {
      const resourceName = ViamAppResourceName(
        'namespace',
        'type',
        'subtype',
        'name',
      );

      const resourceNamesDto = ViamResourceName(
        'namespace',
        'type',
        'subtype',
        'name',
      );

      const error = 'error';

      when(viamAppResourceNameToViamResourceNameMapper(resourceName)).thenReturn(resourceNamesDto);

      when(sensorDataSource.getSensorData([resourceNamesDto])).thenAnswer(
        (_) => Future.error(error),
      );

      await expectLater(sensorService.getSensorData([resourceName]), throwsA(error));
    });
  });
}
