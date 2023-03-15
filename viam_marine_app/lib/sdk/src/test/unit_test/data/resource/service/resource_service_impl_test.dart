// //ignore: depend_on_referenced_packages
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
// import 'package:viam_marine/sdk/src/data/resource/service/viam_resource_service.dart';
// import 'package:viam_marine/sdk/src/data/resource/mapper/resource_name_to_viam_resource_name_mapper.dart';
// import 'package:viam_marine/sdk/src/data/resource/service/resource_service_impl.dart';
// import 'package:viam_marine/sdk/src/data/resource/model/viam_resource_name.dart';
// import 'package:viam_marine/sdk/src/domain/resource/service/resource_service.dart';
// import 'package:viam_marine/sdk/src/gen/common/v1/common.pb.dart';
// import 'package:viam_marine/sdk/src/test/unit_test/generated/mocks.mocks.dart';

// void main() {
//   late ViamResourceService viamResourceService;
//   late ViamResourceDataSource viamResourceDataSource;
//   late ResourceNameToViamResourceNameMapper resourceNameToViamResourceNameMapper;

//   setUp(() {
//     viamResourceDataSource = MockViamResourceDataSource();
//     resourceNameToViamResourceNameMapper = MockResourceNameToViamResourceNameMapper();
//     viamResourceService = ViamResourceServiceImpl(
//       viamResourceDataSource,
//       resourceNameToViamResourceNameMapper,
//     );
//   });

//   group('Sdk resource service', () {
//     test('gets data successfully', () async {
//       final resourceNameDto = ResourceName(
//         namespace: 'namespace',
//         type: 'type',
//         subtype: 'subtype',
//         name: 'name',
//       );

//       const resourceName = ViamResourceName(
//         'namespace',
//         'type',
//         'subtype',
//         'name',
//       );

//       const expectedAnswer = [
//         ViamResourceName(
//           'namespace',
//           'type',
//           'subtype',
//           'name',
//         ),
//       ];

//       when(viamResourceDataSource.getResourceNames(null, null)).thenAnswer(
//         (_) async => Future.value([resourceNameDto]),
//       );

//       when(resourceNameToViamResourceNameMapper(resourceNameDto)).thenReturn(resourceName);

//       final actaulAnswer = await viamResourceService.getResourceNames();

//       expect(actaulAnswer, equals(expectedAnswer));
//     });

//     test('gets data with failure and throws an error', () async {
//       const error = 'error';

//       when(viamResourceDataSource.getResourceNames(null, null)).thenAnswer(
//         (_) => Future.error(error),
//       );

//       await expectLater(viamResourceService.getResourceNames(), throwsA(error));
//     });
//   });
// }
