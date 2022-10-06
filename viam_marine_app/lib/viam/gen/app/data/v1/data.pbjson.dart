///
//  Generated code. Do not modify.
//  source: app/data/v1/data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use dataRequestDescriptor instead')
const DataRequest$json = const {
  '1': 'DataRequest',
  '2': const [
    const {'1': 'filter', '3': 1, '4': 1, '5': 11, '6': '.viam.app.data.v1.Filter', '10': 'filter'},
    const {'1': 'skip', '3': 2, '4': 1, '5': 3, '10': 'skip'},
    const {'1': 'limit', '3': 3, '4': 1, '5': 3, '10': 'limit'},
  ],
};

/// Descriptor for `DataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataRequestDescriptor = $convert.base64Decode('CgtEYXRhUmVxdWVzdBIwCgZmaWx0ZXIYASABKAsyGC52aWFtLmFwcC5kYXRhLnYxLkZpbHRlclIGZmlsdGVyEhIKBHNraXAYAiABKANSBHNraXASFAoFbGltaXQYAyABKANSBWxpbWl0');
@$core.Deprecated('Use filterDescriptor instead')
const Filter$json = const {
  '1': 'Filter',
  '2': const [
    const {'1': 'component_name', '3': 1, '4': 1, '5': 9, '10': 'componentName'},
    const {'1': 'component_type', '3': 2, '4': 1, '5': 9, '10': 'componentType'},
    const {'1': 'component_model', '3': 3, '4': 1, '5': 9, '10': 'componentModel'},
    const {'1': 'method', '3': 4, '4': 1, '5': 9, '10': 'method'},
    const {'1': 'tags', '3': 5, '4': 3, '5': 9, '10': 'tags'},
    const {'1': 'robot_name', '3': 6, '4': 1, '5': 9, '10': 'robotName'},
    const {'1': 'robot_id', '3': 7, '4': 1, '5': 9, '10': 'robotId'},
    const {'1': 'part_name', '3': 8, '4': 1, '5': 9, '10': 'partName'},
    const {'1': 'part_id', '3': 9, '4': 1, '5': 9, '10': 'partId'},
    const {'1': 'location_id', '3': 10, '4': 1, '5': 9, '10': 'locationId'},
    const {'1': 'org_id', '3': 11, '4': 1, '5': 9, '10': 'orgId'},
    const {'1': 'mime_type', '3': 12, '4': 3, '5': 9, '10': 'mimeType'},
    const {'1': 'interval', '3': 13, '4': 1, '5': 11, '6': '.viam.app.data.v1.CaptureInterval', '10': 'interval'},
  ],
};

/// Descriptor for `Filter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List filterDescriptor = $convert.base64Decode('CgZGaWx0ZXISJQoOY29tcG9uZW50X25hbWUYASABKAlSDWNvbXBvbmVudE5hbWUSJQoOY29tcG9uZW50X3R5cGUYAiABKAlSDWNvbXBvbmVudFR5cGUSJwoPY29tcG9uZW50X21vZGVsGAMgASgJUg5jb21wb25lbnRNb2RlbBIWCgZtZXRob2QYBCABKAlSBm1ldGhvZBISCgR0YWdzGAUgAygJUgR0YWdzEh0KCnJvYm90X25hbWUYBiABKAlSCXJvYm90TmFtZRIZCghyb2JvdF9pZBgHIAEoCVIHcm9ib3RJZBIbCglwYXJ0X25hbWUYCCABKAlSCHBhcnROYW1lEhcKB3BhcnRfaWQYCSABKAlSBnBhcnRJZBIfCgtsb2NhdGlvbl9pZBgKIAEoCVIKbG9jYXRpb25JZBIVCgZvcmdfaWQYCyABKAlSBW9yZ0lkEhsKCW1pbWVfdHlwZRgMIAMoCVIIbWltZVR5cGUSPQoIaW50ZXJ2YWwYDSABKAsyIS52aWFtLmFwcC5kYXRhLnYxLkNhcHR1cmVJbnRlcnZhbFIIaW50ZXJ2YWw=');
@$core.Deprecated('Use captureMetadataDescriptor instead')
const CaptureMetadata$json = const {
  '1': 'CaptureMetadata',
  '2': const [
    const {'1': 'location_id', '3': 1, '4': 1, '5': 9, '10': 'locationId'},
    const {'1': 'robot_name', '3': 2, '4': 1, '5': 9, '10': 'robotName'},
    const {'1': 'robot_id', '3': 3, '4': 1, '5': 9, '10': 'robotId'},
    const {'1': 'part_name', '3': 4, '4': 1, '5': 9, '10': 'partName'},
    const {'1': 'part_id', '3': 5, '4': 1, '5': 9, '10': 'partId'},
    const {'1': 'component_type', '3': 6, '4': 1, '5': 9, '10': 'componentType'},
    const {'1': 'component_model', '3': 7, '4': 1, '5': 9, '10': 'componentModel'},
    const {'1': 'component_name', '3': 8, '4': 1, '5': 9, '10': 'componentName'},
    const {'1': 'method_name', '3': 9, '4': 1, '5': 9, '10': 'methodName'},
    const {'1': 'method_parameters', '3': 10, '4': 3, '5': 11, '6': '.viam.app.data.v1.CaptureMetadata.MethodParametersEntry', '10': 'methodParameters'},
    const {'1': 'tags', '3': 11, '4': 3, '5': 9, '10': 'tags'},
    const {'1': 'mime_type', '3': 12, '4': 1, '5': 9, '10': 'mimeType'},
  ],
  '3': const [CaptureMetadata_MethodParametersEntry$json],
};

@$core.Deprecated('Use captureMetadataDescriptor instead')
const CaptureMetadata_MethodParametersEntry$json = const {
  '1': 'MethodParametersEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `CaptureMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List captureMetadataDescriptor = $convert.base64Decode('Cg9DYXB0dXJlTWV0YWRhdGESHwoLbG9jYXRpb25faWQYASABKAlSCmxvY2F0aW9uSWQSHQoKcm9ib3RfbmFtZRgCIAEoCVIJcm9ib3ROYW1lEhkKCHJvYm90X2lkGAMgASgJUgdyb2JvdElkEhsKCXBhcnRfbmFtZRgEIAEoCVIIcGFydE5hbWUSFwoHcGFydF9pZBgFIAEoCVIGcGFydElkEiUKDmNvbXBvbmVudF90eXBlGAYgASgJUg1jb21wb25lbnRUeXBlEicKD2NvbXBvbmVudF9tb2RlbBgHIAEoCVIOY29tcG9uZW50TW9kZWwSJQoOY29tcG9uZW50X25hbWUYCCABKAlSDWNvbXBvbmVudE5hbWUSHwoLbWV0aG9kX25hbWUYCSABKAlSCm1ldGhvZE5hbWUSZAoRbWV0aG9kX3BhcmFtZXRlcnMYCiADKAsyNy52aWFtLmFwcC5kYXRhLnYxLkNhcHR1cmVNZXRhZGF0YS5NZXRob2RQYXJhbWV0ZXJzRW50cnlSEG1ldGhvZFBhcmFtZXRlcnMSEgoEdGFncxgLIAMoCVIEdGFncxIbCgltaW1lX3R5cGUYDCABKAlSCG1pbWVUeXBlGlkKFU1ldGhvZFBhcmFtZXRlcnNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIqCgV2YWx1ZRgCIAEoCzIULmdvb2dsZS5wcm90b2J1Zi5BbnlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use captureIntervalDescriptor instead')
const CaptureInterval$json = const {
  '1': 'CaptureInterval',
  '2': const [
    const {'1': 'start', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'start'},
    const {'1': 'end', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'end'},
  ],
};

/// Descriptor for `CaptureInterval`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List captureIntervalDescriptor = $convert.base64Decode('Cg9DYXB0dXJlSW50ZXJ2YWwSMAoFc3RhcnQYASABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgVzdGFydBIsCgNlbmQYAiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgNlbmQ=');
@$core.Deprecated('Use tabularDataByFilterRequestDescriptor instead')
const TabularDataByFilterRequest$json = const {
  '1': 'TabularDataByFilterRequest',
  '2': const [
    const {'1': 'data_request', '3': 1, '4': 1, '5': 11, '6': '.viam.app.data.v1.DataRequest', '10': 'dataRequest'},
    const {'1': 'count_only', '3': 2, '4': 1, '5': 8, '10': 'countOnly'},
  ],
};

/// Descriptor for `TabularDataByFilterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tabularDataByFilterRequestDescriptor = $convert.base64Decode('ChpUYWJ1bGFyRGF0YUJ5RmlsdGVyUmVxdWVzdBJACgxkYXRhX3JlcXVlc3QYASABKAsyHS52aWFtLmFwcC5kYXRhLnYxLkRhdGFSZXF1ZXN0UgtkYXRhUmVxdWVzdBIdCgpjb3VudF9vbmx5GAIgASgIUgljb3VudE9ubHk=');
@$core.Deprecated('Use tabularDataByFilterResponseDescriptor instead')
const TabularDataByFilterResponse$json = const {
  '1': 'TabularDataByFilterResponse',
  '2': const [
    const {'1': 'metadata', '3': 1, '4': 3, '5': 11, '6': '.viam.app.data.v1.CaptureMetadata', '10': 'metadata'},
    const {'1': 'data', '3': 2, '4': 3, '5': 11, '6': '.viam.app.data.v1.TabularData', '10': 'data'},
    const {'1': 'count', '3': 3, '4': 1, '5': 3, '10': 'count'},
  ],
};

/// Descriptor for `TabularDataByFilterResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tabularDataByFilterResponseDescriptor = $convert.base64Decode('ChtUYWJ1bGFyRGF0YUJ5RmlsdGVyUmVzcG9uc2USPQoIbWV0YWRhdGEYASADKAsyIS52aWFtLmFwcC5kYXRhLnYxLkNhcHR1cmVNZXRhZGF0YVIIbWV0YWRhdGESMQoEZGF0YRgCIAMoCzIdLnZpYW0uYXBwLmRhdGEudjEuVGFidWxhckRhdGFSBGRhdGESFAoFY291bnQYAyABKANSBWNvdW50');
@$core.Deprecated('Use tabularDataDescriptor instead')
const TabularData$json = const {
  '1': 'TabularData',
  '2': const [
    const {'1': 'data', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'data'},
    const {'1': 'metadata_index', '3': 2, '4': 1, '5': 5, '10': 'metadataIndex'},
    const {'1': 'time_requested', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timeRequested'},
    const {'1': 'time_received', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timeReceived'},
  ],
};

/// Descriptor for `TabularData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tabularDataDescriptor = $convert.base64Decode('CgtUYWJ1bGFyRGF0YRIrCgRkYXRhGAEgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIEZGF0YRIlCg5tZXRhZGF0YV9pbmRleBgCIAEoBVINbWV0YWRhdGFJbmRleBJBCg50aW1lX3JlcXVlc3RlZBgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSDXRpbWVSZXF1ZXN0ZWQSPwoNdGltZV9yZWNlaXZlZBgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSDHRpbWVSZWNlaXZlZA==');
@$core.Deprecated('Use binaryDataDescriptor instead')
const BinaryData$json = const {
  '1': 'BinaryData',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'uri', '3': 2, '4': 1, '5': 9, '10': 'uri'},
    const {'1': 'binary', '3': 3, '4': 1, '5': 12, '10': 'binary'},
    const {'1': 'metadata_index', '3': 4, '4': 1, '5': 5, '10': 'metadataIndex'},
    const {'1': 'time_requested', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timeRequested'},
    const {'1': 'time_received', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timeReceived'},
  ],
};

/// Descriptor for `BinaryData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List binaryDataDescriptor = $convert.base64Decode('CgpCaW5hcnlEYXRhEg4KAmlkGAEgASgJUgJpZBIQCgN1cmkYAiABKAlSA3VyaRIWCgZiaW5hcnkYAyABKAxSBmJpbmFyeRIlCg5tZXRhZGF0YV9pbmRleBgEIAEoBVINbWV0YWRhdGFJbmRleBJBCg50aW1lX3JlcXVlc3RlZBgFIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSDXRpbWVSZXF1ZXN0ZWQSPwoNdGltZV9yZWNlaXZlZBgGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSDHRpbWVSZWNlaXZlZA==');
@$core.Deprecated('Use binaryDataByFilterRequestDescriptor instead')
const BinaryDataByFilterRequest$json = const {
  '1': 'BinaryDataByFilterRequest',
  '2': const [
    const {'1': 'data_request', '3': 1, '4': 1, '5': 11, '6': '.viam.app.data.v1.DataRequest', '10': 'dataRequest'},
    const {'1': 'include_binary', '3': 2, '4': 1, '5': 8, '10': 'includeBinary'},
    const {'1': 'count_only', '3': 3, '4': 1, '5': 8, '10': 'countOnly'},
  ],
};

/// Descriptor for `BinaryDataByFilterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List binaryDataByFilterRequestDescriptor = $convert.base64Decode('ChlCaW5hcnlEYXRhQnlGaWx0ZXJSZXF1ZXN0EkAKDGRhdGFfcmVxdWVzdBgBIAEoCzIdLnZpYW0uYXBwLmRhdGEudjEuRGF0YVJlcXVlc3RSC2RhdGFSZXF1ZXN0EiUKDmluY2x1ZGVfYmluYXJ5GAIgASgIUg1pbmNsdWRlQmluYXJ5Eh0KCmNvdW50X29ubHkYAyABKAhSCWNvdW50T25seQ==');
@$core.Deprecated('Use binaryDataByFilterResponseDescriptor instead')
const BinaryDataByFilterResponse$json = const {
  '1': 'BinaryDataByFilterResponse',
  '2': const [
    const {'1': 'metadata', '3': 1, '4': 3, '5': 11, '6': '.viam.app.data.v1.CaptureMetadata', '10': 'metadata'},
    const {'1': 'data', '3': 2, '4': 3, '5': 11, '6': '.viam.app.data.v1.BinaryData', '10': 'data'},
    const {'1': 'count', '3': 3, '4': 1, '5': 3, '10': 'count'},
  ],
};

/// Descriptor for `BinaryDataByFilterResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List binaryDataByFilterResponseDescriptor = $convert.base64Decode('ChpCaW5hcnlEYXRhQnlGaWx0ZXJSZXNwb25zZRI9CghtZXRhZGF0YRgBIAMoCzIhLnZpYW0uYXBwLmRhdGEudjEuQ2FwdHVyZU1ldGFkYXRhUghtZXRhZGF0YRIwCgRkYXRhGAIgAygLMhwudmlhbS5hcHAuZGF0YS52MS5CaW5hcnlEYXRhUgRkYXRhEhQKBWNvdW50GAMgASgDUgVjb3VudA==');
@$core.Deprecated('Use binaryDataByIDsRequestDescriptor instead')
const BinaryDataByIDsRequest$json = const {
  '1': 'BinaryDataByIDsRequest',
  '2': const [
    const {'1': 'file_ids', '3': 1, '4': 3, '5': 9, '10': 'fileIds'},
    const {'1': 'include_binary', '3': 2, '4': 1, '5': 8, '10': 'includeBinary'},
  ],
};

/// Descriptor for `BinaryDataByIDsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List binaryDataByIDsRequestDescriptor = $convert.base64Decode('ChZCaW5hcnlEYXRhQnlJRHNSZXF1ZXN0EhkKCGZpbGVfaWRzGAEgAygJUgdmaWxlSWRzEiUKDmluY2x1ZGVfYmluYXJ5GAIgASgIUg1pbmNsdWRlQmluYXJ5');
@$core.Deprecated('Use binaryDataByIDsResponseDescriptor instead')
const BinaryDataByIDsResponse$json = const {
  '1': 'BinaryDataByIDsResponse',
  '2': const [
    const {'1': 'metadata', '3': 1, '4': 3, '5': 11, '6': '.viam.app.data.v1.CaptureMetadata', '10': 'metadata'},
    const {'1': 'data', '3': 2, '4': 3, '5': 11, '6': '.viam.app.data.v1.BinaryData', '10': 'data'},
    const {'1': 'count', '3': 3, '4': 1, '5': 3, '10': 'count'},
  ],
};

/// Descriptor for `BinaryDataByIDsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List binaryDataByIDsResponseDescriptor = $convert.base64Decode('ChdCaW5hcnlEYXRhQnlJRHNSZXNwb25zZRI9CghtZXRhZGF0YRgBIAMoCzIhLnZpYW0uYXBwLmRhdGEudjEuQ2FwdHVyZU1ldGFkYXRhUghtZXRhZGF0YRIwCgRkYXRhGAIgAygLMhwudmlhbS5hcHAuZGF0YS52MS5CaW5hcnlEYXRhUgRkYXRhEhQKBWNvdW50GAMgASgDUgVjb3VudA==');
