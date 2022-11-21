//ignore: depend_on_referenced_packages
import 'package:flutter_test/flutter_test.dart';
import 'package:viam_marine/sdk/src/data/sensor/mapper/get_readings_response_to_viam_sensor_readings_mapper.dart';
import 'package:viam_marine/sdk/src/data/viam/common/v1/common.pb.dart';
import 'package:viam_marine/sdk/src/data/viam/sensors/v1/sensors.pbgrpc.dart';
import 'package:viam_marine/sdk/src/domain/sensor/model/viam_sensor_readings.dart';
import 'package:viam_marine/sdk/src/google/protobuf/struct.pb.dart';

void main() {
  late GetReadingsResponseToViamSensorReadingsMapper mapper;

  setUp(() {
    mapper = GetReadingsResponseToViamSensorReadingsMapper();
  });

  test("test", () {
    final dto = Readings(
      name: ResourceName(
        namespace: 'namespace',
        type: 'type',
        subtype: 'subtype',
        name: 'name',
      ),
      readings: {'key': Value(numberValue: 0.0)},
    );

    final expectedAnswer = ViamSensorReadings(
      dto.name.namespace,
      dto.name.type,
      dto.name.subtype,
      dto.name.name,
      {'key': 0.0},
    );

    final actualAnswer = mapper(dto);

    expect(actualAnswer, equals(expectedAnswer));
  });
}
