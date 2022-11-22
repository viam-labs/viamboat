import 'package:flutter_test/flutter_test.dart';
import 'package:viam_marine/app/data/resource/mapper/viam_resource_name_to_viam_app_resource_name_mapper.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

void main() {
  late ViamResourceNameToViamAppResourceNameMapper mapper;

  setUp(() {
    mapper = ViamResourceNameToViamAppResourceNameMapper();
  });

  group("When map from ViamResourceName to ViamAppResourceName", () {
    test("mapper returns correct values", () {
      const dto = ViamResourceName(
        'namespace',
        'type',
        'subtype',
        'name',
      );

      final expectedAnswer = ViamAppResourceName(
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
