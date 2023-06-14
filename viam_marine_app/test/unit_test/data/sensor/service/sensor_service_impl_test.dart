import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/data/sensor/data_source/sensor_api_data_source.dart';
import 'package:viam_marine/data/sensor/model/sensor_readings_dto.dart';
import 'package:viam_marine/data/sensor/service/sensor_service_impl.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/domain/sensor/model/viam_app_sensor_readings.dart';
import 'package:viam_marine/domain/sensor/service/sensor_service_impl.dart';
import 'package:viam_marine/domain/service_base/broadcaster/token_expired_broadcaster.dart';
import 'package:viam_sdk/viam_sdk.dart';
import 'sensor_service_impl_test.mocks.dart';

@GenerateMocks([
  SensorDataSource,
  TokenExpiredBroadcaster,
])
void main() {
  late SensorDataSource sensorDataSource;
  late ViamAppSensorService sensorService;
  late TokenExpiredBroadcaster tokenExpiredBroadcaster;

  setUp(() {
    sensorDataSource = MockSensorDataSource();
    tokenExpiredBroadcaster = MockTokenExpiredBroadcaster();

    sensorService = ViamAppSensorServiceImpl(
      tokenExpiredBroadcaster,
      sensorDataSource,
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

      final resourceNameDto = ResourceName(
        namespace: 'namespace',
        type: 'type',
        subtype: 'subtype',
        name: 'name',
      );

      const viamSensorReadings = SensorReadingsDto(
        'name',
        {'key': 0.0},
      );

      const expectedAnswer = ViamAppSensorReadings(
        'name',
        {'key': 0.0},
      );

      when(sensorDataSource.getSensorData(resourceNameDto)).thenAnswer(
        (_) async => viamSensorReadings,
      );

      final actualAnswer = await sensorService.getSensorData(resourceName);

      expect(actualAnswer, equals(expectedAnswer));
    });

    test('gets data with failure and throws an error', () async {
      const resourceName = ViamAppResourceName(
        'namespace',
        'type',
        'subtype',
        'name',
      );

      final resourceNameDto = ResourceName(
        namespace: 'namespace',
        type: 'type',
        subtype: 'subtype',
        name: 'name',
      );

      const error = 'error';

      when(sensorDataSource.getSensorData(resourceNameDto)).thenAnswer(
        (_) => Future.error(error),
      );

      await expectLater(sensorService.getSensorData(resourceName), throwsA(error));
    });
  });
}
