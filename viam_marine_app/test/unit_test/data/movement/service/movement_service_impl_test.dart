import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/data/movement/data_source/movement_sdk_data_source.dart';
import 'package:viam_marine/data/movement/service/movement_service_impl.dart';
import 'package:viam_marine/domain/movement/model/viam_app_linear_velocity.dart';
import 'package:viam_marine/domain/movement/model/viam_app_position.dart';
import 'package:viam_marine/domain/movement/service/movement_service.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/domain/service_base/broadcaster/token_expired_broadcaster.dart';
import 'package:viam_sdk/viam_sdk.dart';
import 'movement_service_impl_test.mocks.dart';

@GenerateMocks([
  ViamAppMovementSdkDataSource,
  TokenExpiredBroadcaster,
])
void main() {
  late ViamAppMovementSdkDataSource viamAppMovementSdkDataSource;
  late ViamAppMovementService viamAppMovementService;
  late TokenExpiredBroadcaster tokenExpiredBroadcaster;

  setUp(() {
    viamAppMovementSdkDataSource = MockViamAppMovementSdkDataSource();
    tokenExpiredBroadcaster = MockTokenExpiredBroadcaster();
    viamAppMovementService = ViamAppMovementServiceImpl(
      tokenExpiredBroadcaster,
      viamAppMovementSdkDataSource,
    );
  });

  group('App Movement service', () {
    test('gets data successfully', () async {
      const viamAppResourceName = ViamAppResourceName(
        'namespace',
        'type',
        'subtype',
        'name',
      );

      final resourceNameDto = ResourceName()
        ..namespace = 'namespace'
        ..type = 'type'
        ..subtype = 'subtype'
        ..name = 'name';

      final GeoPoint coordinates = GeoPoint()
        ..latitude = 0.0
        ..longitude = 0.0;

      final positionDto = Position(
        coordinates,
        0.0,
      );

      const viamAppPosition = ViamAppPosition(
        0.0,
        0.0,
        0.0,
      );

      when(viamAppMovementSdkDataSource.getPosition(resourceNameDto)).thenAnswer((_) async => positionDto);

      final actualAnswer = await viamAppMovementService.getPosition(viamAppResourceName);

      expect(actualAnswer, equals(viamAppPosition));
    });

    test('gets data with failure and throws an error', () async {
      const viamAppResourceName = ViamAppResourceName(
        'namespace',
        'type',
        'subtype',
        'name',
      );

      final resourceNameDto = ResourceName()
        ..namespace = 'namespace'
        ..type = 'type'
        ..subtype = 'subtype'
        ..name = 'name';

      const error = 'error';

      when(viamAppMovementSdkDataSource.getPosition(resourceNameDto)).thenAnswer(
        (_) => Future.error(error),
      );

      await expectLater(viamAppMovementService.getPosition(viamAppResourceName), throwsA(error));
    });

    test('gets LinearVelocity data successfully', () async {
      const viamAppResourceName = ViamAppResourceName(
        'namespace',
        'type',
        'subtype',
        'name',
      );

      final resourceNameDto = ResourceName()
        ..namespace = 'namespace'
        ..type = 'type'
        ..subtype = 'subtype'
        ..name = 'name';

      final vector3 = Vector3()
        ..x = 0
        ..y = 0
        ..z = 0;

      const ViamAppLinearVelocity viamAppLinearVelocity = ViamAppLinearVelocity(
        0,
        0,
        0,
      );

      when(viamAppMovementSdkDataSource.getLinearVelocity(resourceNameDto)).thenAnswer(
        (_) async => vector3,
      );

      final actualAnswer = await viamAppMovementService.getLinearVelocity(viamAppResourceName);

      expect(actualAnswer, equals(viamAppLinearVelocity));
    });

    test('gets LinearVelocity data with failure and throws an error', () async {
      const viamAppResourceName = ViamAppResourceName(
        'namespace',
        'type',
        'subtype',
        'name',
      );

      final resourceNameDto = ResourceName()
        ..namespace = 'namespace'
        ..type = 'type'
        ..subtype = 'subtype'
        ..name = 'name';

      const error = 'error';

      when(viamAppMovementSdkDataSource.getLinearVelocity(resourceNameDto)).thenAnswer(
        (_) => Future.error(error),
      );

      await expectLater(viamAppMovementService.getLinearVelocity(viamAppResourceName), throwsA(error));
    });
  });
}
