//ignore: depend_on_referenced_packages
import 'package:flutter_test/flutter_test.dart';
import 'package:viam_marine/sdk/src/domain/resource/mapper/viam_resource_name_to_resource_name_mapper.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/viam_resource_name.dart';
import 'package:viam_marine/sdk/src/gen/common/v1/common.pb.dart';

void main() {
  late ViamResourceNameToResourceNameMapper viamResourceNameToResourceNameMapper;

  setUp(() {
    viamResourceNameToResourceNameMapper = ViamResourceNameToResourceNameMapper();
  });

  group('When map from ViamResourceName to ResourceName', () {
    test('mapper returns correct values.', () {
      const dto = ViamResourceName(
        'namespace',
        'type',
        'subtype',
        'name',
      );

      final expectedAnswer = ResourceName(
        namespace: dto.namespace,
        type: dto.type,
        subtype: dto.subtype,
        name: dto.name,
      );

      final actualAnswer = viamResourceNameToResourceNameMapper(dto);

      expect(actualAnswer, equals(expectedAnswer));
    });
  });
}
