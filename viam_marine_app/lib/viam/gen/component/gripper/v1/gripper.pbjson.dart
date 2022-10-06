///
//  Generated code. Do not modify.
//  source: component/gripper/v1/gripper.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use openRequestDescriptor instead')
const OpenRequest$json = const {
  '1': 'OpenRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `OpenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openRequestDescriptor = $convert.base64Decode('CgtPcGVuUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1l');
@$core.Deprecated('Use openResponseDescriptor instead')
const OpenResponse$json = const {
  '1': 'OpenResponse',
};

/// Descriptor for `OpenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openResponseDescriptor = $convert.base64Decode('CgxPcGVuUmVzcG9uc2U=');
@$core.Deprecated('Use grabRequestDescriptor instead')
const GrabRequest$json = const {
  '1': 'GrabRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GrabRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List grabRequestDescriptor = $convert.base64Decode('CgtHcmFiUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1l');
@$core.Deprecated('Use grabResponseDescriptor instead')
const GrabResponse$json = const {
  '1': 'GrabResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `GrabResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List grabResponseDescriptor = $convert.base64Decode('CgxHcmFiUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcw==');
@$core.Deprecated('Use stopRequestDescriptor instead')
const StopRequest$json = const {
  '1': 'StopRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `StopRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stopRequestDescriptor = $convert.base64Decode('CgtTdG9wUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1l');
@$core.Deprecated('Use stopResponseDescriptor instead')
const StopResponse$json = const {
  '1': 'StopResponse',
};

/// Descriptor for `StopResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stopResponseDescriptor = $convert.base64Decode('CgxTdG9wUmVzcG9uc2U=');
