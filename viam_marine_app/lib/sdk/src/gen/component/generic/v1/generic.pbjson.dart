///
//  Generated code. Do not modify.
//  source: component/generic/v1/generic.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use doCommandRequestDescriptor instead')
const DoCommandRequest$json = const {
  '1': 'DoCommandRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'command', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'command'},
  ],
};

/// Descriptor for `DoCommandRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List doCommandRequestDescriptor = $convert.base64Decode('ChBEb0NvbW1hbmRSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSMQoHY29tbWFuZBgCIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RSB2NvbW1hbmQ=');
@$core.Deprecated('Use doCommandResponseDescriptor instead')
const DoCommandResponse$json = const {
  '1': 'DoCommandResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'result'},
  ],
};

/// Descriptor for `DoCommandResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List doCommandResponseDescriptor = $convert.base64Decode('ChFEb0NvbW1hbmRSZXNwb25zZRIvCgZyZXN1bHQYASABKAsyFy5nb29nbGUucHJvdG9idWYuU3RydWN0UgZyZXN1bHQ=');
