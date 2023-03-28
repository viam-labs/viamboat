import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/app/data/movement/data_source/movement_sdk_data_source.dart';
import 'package:viam_marine/app/data/movement/mapper/viam_linear_velocity_to_viam_app_linear_velocity_mapper.dart';
import 'package:viam_marine/app/data/movement/mapper/viam_position_to_viam_app_position_mapper.dart';
import 'package:viam_marine/app/data/movement/service/movement_service_impl.dart';
import 'package:viam_marine/app/data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart';
import 'package:viam_marine/app/domain/movement/model/viam_app_linear_velocity.dart';
import 'package:viam_marine/app/domain/movement/model/viam_app_position.dart';
import 'package:viam_marine/app/domain/movement/service/movement_service.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_sdk/viam_sdk.dart';
import 'movement_service_impl_test.mocks.dart';

@GenerateMocks([
  ViamAppMovementSdkDataSource,
  ViamAppResourceNameToViamResourceNameMapper,
  ViamPositionToViamAppPositionMapper,
  ViamLinearVelocityToViamAppLinearVelocityMapper,
])
void main() {
  late ViamAppMovementSdkDataSource viamAppMovementSdkDataSource;
  late ViamAppResourceNameToViamResourceNameMapper viamAppResourceNameToViamResourceNameMapper;
  late ViamPositionToViamAppPositionMapper viamPositionToViamAppPositionMapper;
  late ViamAppMovementService viamAppMovementService;
  late ViamLinearVelocityToViamAppLinearVelocityMapper viamLinearVelocityToViamAppLinearVelocityMapper;

  setUp(() {
    viamAppMovementSdkDataSource = MockViamAppMovementSdkDataSource();
    viamAppResourceNameToViamResourceNameMapper = MockViamAppResourceNameToViamResourceNameMapper();
    viamPositionToViamAppPositionMapper = MockViamPositionToViamAppPositionMapper();
    viamLinearVelocityToViamAppLinearVelocityMapper = MockViamLinearVelocityToViamAppLinearVelocityMapper();
    viamAppMovementService = ViamAppMovementServiceImpl(
      viamAppMovementSdkDataSource,
      viamAppResourceNameToViamResourceNameMapper,
      viamPositionToViamAppPositionMapper,
      viamLinearVelocityToViamAppLinearVelocityMapper,
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

      const resourceNameDto = ViamResourceName(
        'namespace',
        'type',
        'subtype',
        'name',
      );
      const viamPositionDto = ViamPosition(
        0.0,
        0.0,
        0.0,
      );

      const viamAppPosition = ViamAppPosition(
        0.0,
        0.0,
        0.0,
      );

      when(viamAppResourceNameToViamResourceNameMapper(viamAppResourceName)).thenReturn(resourceNameDto);

      when(viamAppMovementSdkDataSource.getPosition(resourceNameDto)).thenAnswer(
        (_) async => viamPositionDto,
      );

      when(viamPositionToViamAppPositionMapper(viamPositionDto)).thenReturn(viamAppPosition);

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

      const resourceNameDto = ViamResourceName(
        'namespace',
        'type',
        'subtype',
        'name',
      );

      const error = 'error';

      when(viamAppResourceNameToViamResourceNameMapper(viamAppResourceName)).thenReturn(resourceNameDto);

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

      const resourceNameDto = ViamResourceName(
        'namespace',
        'type',
        'subtype',
        'name',
      );

      const ViamLinearVelocity viamLinearVelocityDto = ViamLinearVelocity(
        0,
        0,
        0,
      );

      const ViamAppLinearVelocity viamAppLinearVelocity = ViamAppLinearVelocity(
        0,
        0,
        0,
      );

      when(viamAppResourceNameToViamResourceNameMapper(viamAppResourceName)).thenReturn(resourceNameDto);

      when(viamAppMovementSdkDataSource.getLinearVelocity(resourceNameDto)).thenAnswer(
        (_) async => viamLinearVelocityDto,
      );

      when(viamLinearVelocityToViamAppLinearVelocityMapper(viamLinearVelocityDto)).thenReturn(viamAppLinearVelocity);

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

      const resourceNameDto = ViamResourceName(
        'namespace',
        'type',
        'subtype',
        'name',
      );

      const error = 'error';

      when(viamAppResourceNameToViamResourceNameMapper(viamAppResourceName)).thenReturn(resourceNameDto);

      when(viamAppMovementSdkDataSource.getLinearVelocity(resourceNameDto)).thenAnswer(
        (_) => Future.error(error),
      );

      await expectLater(viamAppMovementService.getLinearVelocity(viamAppResourceName), throwsA(error));
    });
  });
}
