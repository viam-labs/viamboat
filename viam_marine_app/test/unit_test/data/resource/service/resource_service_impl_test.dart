import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/data/resource/data_source/resource_api_data_source.dart';
import 'package:viam_marine/data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart';
import 'package:viam_marine/data/resource/service/resource_service_impl.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/domain/resource/service/resource_service.dart';
import 'package:viam_sdk/viam_sdk.dart';

import 'resource_service_impl_test.mocks.dart';

@GenerateMocks([
  ResourceDataSource,
  ViamResourceNameToViamAppResourceNameMapper,
])
void main() {
  late ResourceDataSource resourceDataSource;
  late ViamResourceNameToViamAppResourceNameMapper viamResourceNameToViamAppResourceNameMapper;
  late ViamAppResourceService resourceService;

  setUp(() {
    resourceDataSource = MockResourceDataSource();
    viamResourceNameToViamAppResourceNameMapper = MockViamResourceNameToViamAppResourceNameMapper();
    resourceService = ViamAppResourceServiceImpl(
      resourceDataSource,
      viamResourceNameToViamAppResourceNameMapper,
    );
  });

  group("App resource service", () {
    test("gets resources data successfully", () async {
      const resourceNameDto = ViamResourceName(
        'namespace',
        'type',
        'subtype',
        'name',
      );

      const appResourceName = ViamAppResourceName(
        'namespace',
        'type',
        'subtype',
        'name',
      );

      const expectedAnswer = [
        ViamAppResourceName(
          'namespace',
          'type',
          'subtype',
          'name',
        )
      ];

      when(resourceDataSource.getResourceNames(null, null)).thenAnswer(
        (_) async => Future.value([resourceNameDto]),
      );

      when(viamResourceNameToViamAppResourceNameMapper(resourceNameDto)).thenReturn(appResourceName);

      final actualAnswer = await resourceService.getResourceNames();

      expect(actualAnswer, equals(expectedAnswer));
    });

    test("gets reasource data with failure and throws an error", () async {
      const error = 'error';

      when(resourceDataSource.getResourceNames(null, null)).thenAnswer(
        (_) async => Future.error(error),
      );

      await expectLater(resourceService.getResourceNames(), throwsA(error));
    });
  });
}
