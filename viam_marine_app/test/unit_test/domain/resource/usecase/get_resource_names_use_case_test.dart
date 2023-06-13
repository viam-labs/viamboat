import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/domain/resource/service/resource_service.dart';
import 'package:viam_marine/domain/resource/usecase/get_resource_names_use_case.dart';

import 'get_resource_names_use_case_test.mocks.dart';

@GenerateMocks([ViamAppResourceService])
void main() {
  late ViamAppResourceService viamAppResourceService;
  late GetResourceNamesUseCase getResourceNamesUseCase;

  setUp(() {
    viamAppResourceService = MockViamAppResourceService();
    getResourceNamesUseCase = GetResourceNamesUseCase(viamAppResourceService);
  });

  group('GetResourceNamesUseCase', () {
    test('gets resourceNames successfully', () async {
      const resourceNames = [
        ViamAppResourceName(
          'namespace',
          'type',
          'subtype',
          'name',
        ),
      ];

      when(viamAppResourceService.getResourceNames()).thenReturn(resourceNames);

      final actualAnswer = getResourceNamesUseCase();

      expect(actualAnswer, equals(resourceNames));
    });
  });
}
