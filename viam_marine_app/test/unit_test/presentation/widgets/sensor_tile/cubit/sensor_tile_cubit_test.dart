import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:viam_marine/app/domain/sensor/service/sensor_service_impl.dart';
import 'package:viam_marine/app/presentation/widgets/sensor_tile/cubit/sensor_tile_cubit.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'sensor_tile_cubit_test.mocks.dart';

@GenerateMocks([SensorService])
void main() {
  late SensorTileCubit sensorTileCubit;
  late SensorService sensorService;

  setUp(() {
    sensorService = MockSensorService();
    sensorTileCubit = SensorTileCubit(sensorService);
  });

  group('SensorTile cubit', () {
    const resourceName = ViamAppResourceName(
      'namespace',
      'type',
      'subtype',
      'name',
    );

    blocTest(
      'emit',
      build: () => sensorTileCubit,
      act: (SensorTileCubit cubit) => cubit.init(resourceName),
      expect: () => [],
    );
  });
}
