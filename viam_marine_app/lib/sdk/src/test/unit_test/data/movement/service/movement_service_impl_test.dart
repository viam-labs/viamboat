// ignore_for_file: depend_on_referenced_packages
import 'package:mockito/mockito.dart';
import 'package:viam_marine/sdk/src/data/movement/data_source/movement_api_data_source.dart';
import 'package:viam_marine/sdk/src/data/movement/mapper/get_position_response_to_viam_position_mapper.dart';
import 'package:viam_marine/sdk/src/data/movement/service/movement_service_impl.dart';
import 'package:viam_marine/sdk/src/data/resource/mapper/viam_resource_name_to_resource_name_mapper.dart';
import 'package:viam_marine/sdk/src/data/viam/common/v1/common.pb.dart';
import 'package:viam_marine/sdk/src/data/viam/movementsensor/v1/movementsensor.pb.dart';
import 'package:viam_marine/sdk/src/domain/movement/model/viam_position.dart';
import 'package:viam_marine/sdk/src/domain/movement/service/movement_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/viam_resource_name.dart';
import 'package:viam_marine/sdk/src/test/unit_test/generated/mocks.mocks.dart';

void main() {
  late ViamMovementDataSource viamMovementDataSource;
  late ViamResourceNameToResourceNameMapper viamResourceNameToResourceNameMapper;
  late GetPositionResponseToViamPositionMapper getPositionResponseToViamPositionMapper;
  late ViamMovementService viamMovementService;

  setUp(() {
    viamMovementDataSource = MockViamMovementDataSource();
    viamResourceNameToResourceNameMapper = MockViamResourceNameToResourceNameMapper();
    getPositionResponseToViamPositionMapper = MockGetPositionResponseToViamPositionMapper();
    viamMovementService = ViamMovementServiceImpl(
      viamMovementDataSource,
      viamResourceNameToResourceNameMapper,
      getPositionResponseToViamPositionMapper,
    );
  });

  group('Sdk Movement service', () {
    test('gets data successfully', () async {
      const viamResourceName = ViamResourceName(
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

      final geoPoint = GeoPoint(
        latitude: 0.0,
        longitude: 0.0,
      );

      final getPositionResponseDto = GetPositionResponse(
        altitudeMm: 0.0,
        coordinate: geoPoint,
      );

      const viamPosition = ViamPosition(
        0.0,
        0.0,
        0.0,
      );

      final expectedAnswer = ViamPosition(
        getPositionResponseDto.altitudeMm,
        getPositionResponseDto.coordinate.latitude,
        getPositionResponseDto.coordinate.longitude,
      );

      when(viamResourceNameToResourceNameMapper(viamResourceName)).thenReturn(resourceNameDto);

      when(viamMovementDataSource.getPositionData(resourceNameDto)).thenAnswer(
        (_) async => getPositionResponseDto,
      );

      when(getPositionResponseToViamPositionMapper(getPositionResponseDto)).thenReturn(viamPosition);

      final actualAnswer = await viamMovementService.getPositionData(viamResourceName);

      expect(actualAnswer, equals(expectedAnswer));
    });

    test('gets data with failure and throws an error', () async {
      const viamResourceName = ViamResourceName(
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

      when(viamResourceNameToResourceNameMapper(viamResourceName)).thenReturn(resourceNameDto);

      when(viamMovementDataSource.getPositionData(resourceNameDto)).thenAnswer(
        (_) => Future.error(error),
      );

      await expectLater(viamMovementService.getPositionData(viamResourceName), throwsA(error));
    });
  });
}
