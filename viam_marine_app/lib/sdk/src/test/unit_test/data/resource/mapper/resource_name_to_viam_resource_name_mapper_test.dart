//ignore: depend_on_referenced_packages
import 'package:flutter_test/flutter_test.dart';
import 'package:viam_marine/sdk/src/data/resource/mapper/resource_name_to_viam_resource_name_mapper.dart';
import 'package:viam_marine/sdk/src/domain/resource/model/viam_resource_name.dart';
import 'package:viam_marine/sdk/src/gen/common/v1/common.pb.dart';

void main() {
  late ResourceNameToViamResourceNameMapper resourceNameToViamResourceNameMapper;

  setUp(() {
    resourceNameToViamResourceNameMapper = ResourceNameToViamResourceNameMapper();
  });

  group('When map from ResourceName to ViamResourceName', () {
    test('mapper returns correct values', () {
      final dto = ResourceName(
        namespace: 'namespace',
        type: 'type',
        subtype: 'subtype',
        name: 'name',
      );

      final expectedAnswer = ViamResourceName(
        dto.namespace,
        dto.type,
        dto.subtype,
        dto.name,
      );

      final actualAnswer = resourceNameToViamResourceNameMapper(dto);

      expect(actualAnswer, equals(expectedAnswer));
    });
  });
}
