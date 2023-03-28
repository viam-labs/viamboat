import 'package:flutter_test/flutter_test.dart';
import 'package:viam_marine/app/data/resource/mapper/viam_app_resource_name_to_viam_resource_name_mapper.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_sdk/viam_sdk.dart';

void main() {
  late ViamAppResourceNameToViamResourceNameMapper mapper;

  setUp(() {
    mapper = ViamAppResourceNameToViamResourceNameMapper();
  });

  group('When map from ViamAppResourceName to ViamResourceName', () {
    test('mapper returns correct values', () {
      const ViamAppResourceName dto = ViamAppResourceName(
        'nameSpace',
        'type',
        'subtype',
        'name',
      );

      final expectedAnswer = ViamResourceName(
        dto.namespace,
        dto.type,
        dto.subtype,
        dto.name,
      );

      final actualAnswer = mapper(dto);

      expect(actualAnswer, equals(expectedAnswer));
    });
  });
}
