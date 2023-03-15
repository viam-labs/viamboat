// //ignore: depend_on_referenced_packages
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
// import 'package:viam_marine/sdk/src/data/resource/mapper/viam_resource_name_to_resource_name_mapper.dart';
// import 'package:viam_marine/sdk/src/data/sensor/service/viam_sensor_service.dart';
// import 'package:viam_marine/sdk/src/data/sensor/mapper/get_readings_response_to_viam_sensor_readings_mapper.dart';
// import 'package:viam_marine/sdk/src/data/sensor/service/sensor_service_impl.dart';
// import 'package:viam_marine/sdk/src/data/resource/model/viam_resource_name.dart';
// import 'package:viam_marine/sdk/src/data/sensor/model/viam_sensor_readings.dart';
// import 'package:viam_marine/sdk/src/domain/sensor/service/sensor_service.dart';
// import 'package:viam_marine/sdk/src/gen/common/v1/common.pb.dart';
// import 'package:viam_marine/sdk/src/gen/google/protobuf/struct.pb.dart';
// import 'package:viam_marine/sdk/src/gen/service/sensors/v1/sensors.pb.dart';
// import 'package:viam_marine/sdk/src/test/unit_test/generated/mocks.mocks.dart';

// void main() {
//   late ViamSensorDataSource viamSensorDataSource;
//   late GetReadingsResponseToViamSensorReadingsMapper getReadingsResponseToViamSensorReadingsMapper;
//   late ViamResourceNameToResourceNameMapper viamResourceNameToResourceNameMapper;
//   late ViamSensorService sensorService;

//   setUp(() {
//     viamSensorDataSource = MockViamSensorDataSource();
//     getReadingsResponseToViamSensorReadingsMapper = MockGetReadingsResponseToViamSensorReadingsMapper();
//     viamResourceNameToResourceNameMapper = MockViamResourceNameToResourceNameMapper();

//     sensorService = ViamSensorServiceImpl(
//       viamSensorDataSource,
//       getReadingsResponseToViamSensorReadingsMapper,
//       viamResourceNameToResourceNameMapper,
//     );
//   });

//   group('Sdk sensor service', () {
//     test('get data with success', () async {
//       const sensorRequestName = 'sensorRequestName';

//       const resourceNames = ViamResourceName(
//         'namespace',
//         'type',
//         'subtype',
//         'name',
//       );

//       final resourceNamesDto = ResourceName(
//         namespace: 'namespace',
//         type: 'type',
//         subtype: 'subtype',
//         name: 'name',
//       );

//       final readingsDto = Readings(
//         name: ResourceName(
//           namespace: 'namespace',
//           type: 'type',
//           subtype: 'subtype',
//           name: 'name',
//         ),
//         readings: {'key': Value(numberValue: 0.0)},
//       );

//       final getReadingsDto = GetReadingsResponse(
//         readings: [readingsDto],
//       );

//       const sensorReadings = ViamSensorReadings(
//         'namespace',
//         'type',
//         'subtype',
//         'name',
//         {'key': 0.0},
//       );

//       const expectedAnswer = [
//         ViamSensorReadings(
//           'namespace',
//           'type',
//           'subtype',
//           'name',
//           {'key': 0.0},
//         ),
//       ];

//       when(viamResourceNameToResourceNameMapper(resourceNames)).thenReturn(resourceNamesDto);
//       when(viamSensorDataSource.getSensorData([resourceNamesDto], sensorRequestName)).thenAnswer(
//         (_) async => getReadingsDto,
//       );
//       when(getReadingsResponseToViamSensorReadingsMapper(readingsDto)).thenReturn(sensorReadings);

//       final actualAnswer = await sensorService.getSensorData([resourceNames], sensorRequestName);

//       expect(actualAnswer, equals(expectedAnswer));
//     });

//     test('get data with failure and throw error', () async {
//       const sensorRequestName = 'sensorRequestName';
//       const error = 'error';

//       const resourceNames = ViamResourceName(
//         'namespace',
//         'type',
//         'subtype',
//         'name',
//       );

//       final resourceNamesDto = ResourceName(
//         namespace: 'namespace',
//         type: 'type',
//         subtype: 'subtype',
//         name: 'name',
//       );

//       when(viamResourceNameToResourceNameMapper(resourceNames)).thenReturn(resourceNamesDto);
//       when(viamSensorDataSource.getSensorData([resourceNamesDto], sensorRequestName)).thenAnswer(
//         (_) => Future.error(error),
//       );

//       await expectLater(sensorService.getSensorData([resourceNames], sensorRequestName), throwsA(error));
//     });
//   });
// }
