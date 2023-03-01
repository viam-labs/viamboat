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
    const {'1': 'extra', '3': 99, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'extra'},
  ],
  '7': const {'3': true},
};

/// Descriptor for `GetPositionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPositionRequestDescriptor = $convert.base64Decode('ChJHZXRQb3NpdGlvblJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRItCgVleHRyYRhjIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSBWV4dHJhOgIYAQ==');
@$core.Deprecated('Use getPositionResponseDescriptor instead')
const GetPositionResponse$json = const {
  '1': 'GetPositionResponse',
  '2': const [
    const {'1': 'pose', '3': 1, '4': 1, '5': 11, '6': '.viam.common.v1.PoseInFrame', '10': 'pose'},
    const {'1': 'extra', '3': 99, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'extra'},
  ],
  '7': const {'3': true},
};

/// Descriptor for `GetPositionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPositionResponseDescriptor = $convert.base64Decode('ChNHZXRQb3NpdGlvblJlc3BvbnNlEi8KBHBvc2UYASABKAsyGy52aWFtLmNvbW1vbi52MS5Qb3NlSW5GcmFtZVIEcG9zZRItCgVleHRyYRhjIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSBWV4dHJhOgIYAQ==');
@$core.Deprecated('Use getMapRequestDescriptor instead')
const GetMapRequest$json = const {
  '1': 'GetMapRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'mime_type', '3': 2, '4': 1, '5': 9, '10': 'mimeType'},
    const {'1': 'camera_position', '3': 3, '4': 1, '5': 11, '6': '.viam.common.v1.Pose', '9': 0, '10': 'cameraPosition', '17': true},
    const {'1': 'include_robot_marker', '3': 4, '4': 1, '5': 8, '10': 'includeRobotMarker'},
    const {'1': 'extra', '3': 99, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'extra'},
  ],
  '7': const {'3': true},
  '8': const [
    const {'1': '_camera_position'},
  ],
};

/// Descriptor for `GetMapRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMapRequestDescriptor = $convert.base64Decode('Cg1HZXRNYXBSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSGwoJbWltZV90eXBlGAIgASgJUghtaW1lVHlwZRJCCg9jYW1lcmFfcG9zaXRpb24YAyABKAsyFC52aWFtLmNvbW1vbi52MS5Qb3NlSABSDmNhbWVyYVBvc2l0aW9uiAEBEjAKFGluY2x1ZGVfcm9ib3RfbWFya2VyGAQgASgIUhJpbmNsdWRlUm9ib3RNYXJrZXISLQoFZXh0cmEYYyABKAsyFy5nb29nbGUucHJvdG9idWYuU3RydWN0UgVleHRyYToCGAFCEgoQX2NhbWVyYV9wb3NpdGlvbg==');
@$core.Deprecated('Use getMapResponseDescriptor instead')
const GetMapResponse$json = const {
  '1': 'GetMapResponse',
  '2': const [
    const {'1': 'point_cloud', '3': 1, '4': 1, '5': 11, '6': '.viam.common.v1.PointCloudObject', '9': 0, '10': 'pointCloud'},
    const {'1': 'image', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'image'},
    const {'1': 'mime_type', '3': 3, '4': 1, '5': 9, '10': 'mimeType'},
  ],
  '7': const {'3': true},
  '8': const [
    const {'1': 'map'},
  ],
};

/// Descriptor for `GetMapResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMapResponseDescriptor = $convert.base64Decode('Cg5HZXRNYXBSZXNwb25zZRJDCgtwb2ludF9jbG91ZBgBIAEoCzIgLnZpYW0uY29tbW9uLnYxLlBvaW50Q2xvdWRPYmplY3RIAFIKcG9pbnRDbG91ZBIWCgVpbWFnZRgCIAEoDEgAUgVpbWFnZRIbCgltaW1lX3R5cGUYAyABKAlSCG1pbWVUeXBlOgIYAUIFCgNtYXA=');
@$core.Deprecated('Use getPositionNewRequestDescriptor instead')
const GetPositionNewRequest$json = const {
  '1': 'GetPositionNewRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GetPositionNewRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPositionNewRequestDescriptor = $convert.base64Decode('ChVHZXRQb3NpdGlvbk5ld1JlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZQ==');
@$core.Deprecated('Use getPositionNewResponseDescriptor instead')
const GetPositionNewResponse$json = const {
  '1': 'GetPositionNewResponse',
  '2': const [
    const {'1': 'pose', '3': 1, '4': 1, '5': 11, '6': '.viam.common.v1.Pose', '10': 'pose'},
    const {'1': 'component_reference', '3': 2, '4': 1, '5': 9, '10': 'componentReference'},
    const {'1': 'extra', '3': 99, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'extra'},
  ],
};

/// Descriptor for `GetPositionNewResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPositionNewResponseDescriptor = $convert.base64Decode('ChZHZXRQb3NpdGlvbk5ld1Jlc3BvbnNlEigKBHBvc2UYASABKAsyFC52aWFtLmNvbW1vbi52MS5Qb3NlUgRwb3NlEi8KE2NvbXBvbmVudF9yZWZlcmVuY2UYAiABKAlSEmNvbXBvbmVudFJlZmVyZW5jZRItCgVleHRyYRhjIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSBWV4dHJh');
@$core.Deprecated('Use getPointCloudMapRequestDescriptor instead')
const GetPointCloudMapRequest$json = const {
  '1': 'GetPointCloudMapRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
  '7': const {'3': true},
};

/// Descriptor for `GetPointCloudMapRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPointCloudMapRequestDescriptor = $convert.base64Decode('ChdHZXRQb2ludENsb3VkTWFwUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lOgIYAQ==');
@$core.Deprecated('Use getPointCloudMapResponseDescriptor instead')
const GetPointCloudMapResponse$json = const {
  '1': 'GetPointCloudMapResponse',
  '2': const [
    const {'1': 'point_cloud_pcd', '3': 1, '4': 1, '5': 12, '10': 'pointCloudPcd'},
  ],
  '7': const {'3': true},
};

/// Descriptor for `GetPointCloudMapResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPointCloudMapResponseDescriptor = $convert.base64Decode('ChhHZXRQb2ludENsb3VkTWFwUmVzcG9uc2USJgoPcG9pbnRfY2xvdWRfcGNkGAEgASgMUg1wb2ludENsb3VkUGNkOgIYAQ==');
@$core.Deprecated('Use getInternalStateRequestDescriptor instead')
const GetInternalStateRequest$json = const {
  '1': 'GetInternalStateRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
  '7': const {'3': true},
};

/// Descriptor for `GetInternalStateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInternalStateRequestDescriptor = $convert.base64Decode('ChdHZXRJbnRlcm5hbFN0YXRlUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lOgIYAQ==');
@$core.Deprecated('Use getInternalStateResponseDescriptor instead')
const GetInternalStateResponse$json = const {
  '1': 'GetInternalStateResponse',
  '2': const [
    const {'1': 'internal_state', '3': 1, '4': 1, '5': 12, '10': 'internalState'},
  ],
  '7': const {'3': true},
};

/// Descriptor for `GetInternalStateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInternalStateResponseDescriptor = $convert.base64Decode('ChhHZXRJbnRlcm5hbFN0YXRlUmVzcG9uc2USJQoOaW50ZXJuYWxfc3RhdGUYASABKAxSDWludGVybmFsU3RhdGU6AhgB');
@$core.Deprecated('Use getPointCloudMapStreamRequestDescriptor instead')
const GetPointCloudMapStreamRequest$json = const {
  '1': 'GetPointCloudMapStreamRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GetPointCloudMapStreamRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPointCloudMapStreamRequestDescriptor = $convert.base64Decode('Ch1HZXRQb2ludENsb3VkTWFwU3RyZWFtUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1l');
@$core.Deprecated('Use getPointCloudMapStreamResponseDescriptor instead')
const GetPointCloudMapStreamResponse$json = const {
  '1': 'GetPointCloudMapStreamResponse',
  '2': const [
    const {'1': 'point_cloud_pcd_chunk', '3': 1, '4': 1, '5': 12, '10': 'pointCloudPcdChunk'},
  ],
};

/// Descriptor for `GetPointCloudMapStreamResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPointCloudMapStreamResponseDescriptor = $convert.base64Decode('Ch5HZXRQb2ludENsb3VkTWFwU3RyZWFtUmVzcG9uc2USMQoVcG9pbnRfY2xvdWRfcGNkX2NodW5rGAEgASgMUhJwb2ludENsb3VkUGNkQ2h1bms=');
@$core.Deprecated('Use getInternalStateStreamRequestDescriptor instead')
const GetInternalStateStreamRequest$json = const {
  '1': 'GetInternalStateStreamRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GetInternalStateStreamRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInternalStateStreamRequestDescriptor = $convert.base64Decode('Ch1HZXRJbnRlcm5hbFN0YXRlU3RyZWFtUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1l');
@$core.Deprecated('Use getInternalStateStreamResponseDescriptor instead')
const GetInternalStateStreamResponse$json = const {
  '1': 'GetInternalStateStreamResponse',
  '2': const [
    const {'1': 'internal_state_chunk', '3': 1, '4': 1, '5': 12, '10': 'internalStateChunk'},
  ],
};

/// Descriptor for `GetInternalStateStreamResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInternalStateStreamResponseDescriptor = $convert.base64Decode('Ch5HZXRJbnRlcm5hbFN0YXRlU3RyZWFtUmVzcG9uc2USMAoUaW50ZXJuYWxfc3RhdGVfY2h1bmsYASABKAxSEmludGVybmFsU3RhdGVDaHVuaw==');
