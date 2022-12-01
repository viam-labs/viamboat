// ignore_for_file: depend_on_referenced_packages
import 'package:mockito/mockito.dart';
import 'package:viam_marine/sdk/src/data/movement/data_source/movement_api_data_source.dart';
import 'package:viam_marine/sdk/src/data/movement/mapper/get_position_response_to_viam_position_mapper.dart';
import 'package:viam_marine/sdk/src/data/movement/service/movement_service_impl.dart';
import 'package:viam_marine/sdk/src/data/resource/mapper/viam_resource_name_to_resource_name_mapper.dart';
import 'package:viam_marine/sdk/src/data/viam/common/v1/common.pb.dart';
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
    getPositionResponseToViamPositionMapper = GetPositionResponseToViamPositionMapper();
    viamMovementService = ViamMovementServiceImpl(
      viamMovementDataSource,
      viamResourceNameToResourceNameMapper,
      getPositionResponseToViamPositionMapper,
    );
  });

  group('Sdk Movement service', () {
    test('gets data successfully', () {
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

      when(viamResourceNameToResourceNameMapper(viamResourceName)).thenReturn(resourceNameDto);
    });
  });
}
