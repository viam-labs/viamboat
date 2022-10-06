///
//  Generated code. Do not modify.
//  source: service/slam/v1/slam.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use getPositionRequestDescriptor instead')
const GetPositionRequest$json = const {
  '1': 'GetPositionRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GetPositionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPositionRequestDescriptor = $convert.base64Decode('ChJHZXRQb3NpdGlvblJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZQ==');
@$core.Deprecated('Use getPositionResponseDescriptor instead')
const GetPositionResponse$json = const {
  '1': 'GetPositionResponse',
  '2': const [
    const {'1': 'pose', '3': 1, '4': 1, '5': 11, '6': '.viam.common.v1.PoseInFrame', '10': 'pose'},
    const {'1': 'extra', '3': 99, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'extra'},
  ],
};

/// Descriptor for `GetPositionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPositionResponseDescriptor = $convert.base64Decode('ChNHZXRQb3NpdGlvblJlc3BvbnNlEi8KBHBvc2UYASABKAsyGy52aWFtLmNvbW1vbi52MS5Qb3NlSW5GcmFtZVIEcG9zZRItCgVleHRyYRhjIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSBWV4dHJh');
@$core.Deprecated('Use getMapRequestDescriptor instead')
const GetMapRequest$json = const {
  '1': 'GetMapRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'mime_type', '3': 2, '4': 1, '5': 9, '10': 'mimeType'},
    const {'1': 'camera_position', '3': 3, '4': 1, '5': 11, '6': '.viam.common.v1.Pose', '9': 0, '10': 'cameraPosition', '17': true},
    const {'1': 'include_robot_marker', '3': 4, '4': 1, '5': 8, '10': 'includeRobotMarker'},
  ],
  '8': const [
    const {'1': '_camera_position'},
  ],
};

/// Descriptor for `GetMapRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMapRequestDescriptor = $convert.base64Decode('Cg1HZXRNYXBSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSGwoJbWltZV90eXBlGAIgASgJUghtaW1lVHlwZRJCCg9jYW1lcmFfcG9zaXRpb24YAyABKAsyFC52aWFtLmNvbW1vbi52MS5Qb3NlSABSDmNhbWVyYVBvc2l0aW9uiAEBEjAKFGluY2x1ZGVfcm9ib3RfbWFya2VyGAQgASgIUhJpbmNsdWRlUm9ib3RNYXJrZXJCEgoQX2NhbWVyYV9wb3NpdGlvbg==');
@$core.Deprecated('Use getMapResponseDescriptor instead')
const GetMapResponse$json = const {
  '1': 'GetMapResponse',
  '2': const [
    const {'1': 'point_cloud', '3': 1, '4': 1, '5': 11, '6': '.viam.common.v1.PointCloudObject', '9': 0, '10': 'pointCloud'},
    const {'1': 'image', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'image'},
    const {'1': 'mime_type', '3': 3, '4': 1, '5': 9, '10': 'mimeType'},
  ],
  '8': const [
    const {'1': 'map'},
  ],
};

/// Descriptor for `GetMapResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMapResponseDescriptor = $convert.base64Decode('Cg5HZXRNYXBSZXNwb25zZRJDCgtwb2ludF9jbG91ZBgBIAEoCzIgLnZpYW0uY29tbW9uLnYxLlBvaW50Q2xvdWRPYmplY3RIAFIKcG9pbnRDbG91ZBIWCgVpbWFnZRgCIAEoDEgAUgVpbWFnZRIbCgltaW1lX3R5cGUYAyABKAlSCG1pbWVUeXBlQgUKA21hcA==');
