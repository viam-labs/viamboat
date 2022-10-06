///
//  Generated code. Do not modify.
//  source: app/model/v1/model.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use statusDescriptor instead')
const Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'UNSPECIFIED', '2': 0},
    const {'1': 'FAIL', '2': 1},
    const {'1': 'OK', '2': 2},
  ],
};

/// Descriptor for `Status`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List statusDescriptor = $convert.base64Decode('CgZTdGF0dXMSDwoLVU5TUEVDSUZJRUQQABIICgRGQUlMEAESBgoCT0sQAg==');
@$core.Deprecated('Use fileDataDescriptor instead')
const FileData$json = const {
  '1': 'FileData',
  '2': const [
    const {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `FileData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileDataDescriptor = $convert.base64Decode('CghGaWxlRGF0YRISCgRkYXRhGAEgASgMUgRkYXRh');
@$core.Deprecated('Use uploadMetadataDescriptor instead')
const UploadMetadata$json = const {
  '1': 'UploadMetadata',
  '2': const [
    const {'1': 'org_id', '3': 1, '4': 1, '5': 9, '10': 'orgId'},
    const {'1': 'model_name', '3': 2, '4': 1, '5': 9, '10': 'modelName'},
    const {'1': 'associated_dataset', '3': 3, '4': 1, '5': 9, '10': 'associatedDataset'},
  ],
};

/// Descriptor for `UploadMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadMetadataDescriptor = $convert.base64Decode('Cg5VcGxvYWRNZXRhZGF0YRIVCgZvcmdfaWQYASABKAlSBW9yZ0lkEh0KCm1vZGVsX25hbWUYAiABKAlSCW1vZGVsTmFtZRItChJhc3NvY2lhdGVkX2RhdGFzZXQYAyABKAlSEWFzc29jaWF0ZWREYXRhc2V0');
@$core.Deprecated('Use uploadRequestDescriptor instead')
const UploadRequest$json = const {
  '1': 'UploadRequest',
  '2': const [
    const {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.viam.app.model.v1.UploadMetadata', '9': 0, '10': 'metadata'},
    const {'1': 'file_contents', '3': 2, '4': 1, '5': 11, '6': '.viam.app.model.v1.FileData', '9': 0, '10': 'fileContents'},
  ],
  '8': const [
    const {'1': 'upload_packet'},
  ],
};

/// Descriptor for `UploadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadRequestDescriptor = $convert.base64Decode('Cg1VcGxvYWRSZXF1ZXN0Ej8KCG1ldGFkYXRhGAEgASgLMiEudmlhbS5hcHAubW9kZWwudjEuVXBsb2FkTWV0YWRhdGFIAFIIbWV0YWRhdGESQgoNZmlsZV9jb250ZW50cxgCIAEoCzIbLnZpYW0uYXBwLm1vZGVsLnYxLkZpbGVEYXRhSABSDGZpbGVDb250ZW50c0IPCg11cGxvYWRfcGFja2V0');
@$core.Deprecated('Use deleteMetadataDescriptor instead')
const DeleteMetadata$json = const {
  '1': 'DeleteMetadata',
  '2': const [
    const {'1': 'org_id', '3': 1, '4': 1, '5': 9, '10': 'orgId'},
    const {'1': 'model_name', '3': 2, '4': 1, '5': 9, '10': 'modelName'},
  ],
};

/// Descriptor for `DeleteMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteMetadataDescriptor = $convert.base64Decode('Cg5EZWxldGVNZXRhZGF0YRIVCgZvcmdfaWQYASABKAlSBW9yZ0lkEh0KCm1vZGVsX25hbWUYAiABKAlSCW1vZGVsTmFtZQ==');
@$core.Deprecated('Use deleteRequestDescriptor instead')
const DeleteRequest$json = const {
  '1': 'DeleteRequest',
  '2': const [
    const {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.viam.app.model.v1.DeleteMetadata', '10': 'metadata'},
  ],
};

/// Descriptor for `DeleteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteRequestDescriptor = $convert.base64Decode('Cg1EZWxldGVSZXF1ZXN0Ej0KCG1ldGFkYXRhGAEgASgLMiEudmlhbS5hcHAubW9kZWwudjEuRGVsZXRlTWV0YWRhdGFSCG1ldGFkYXRh');
@$core.Deprecated('Use deployMetadataDescriptor instead')
const DeployMetadata$json = const {
  '1': 'DeployMetadata',
  '2': const [
    const {'1': 'model_name', '3': 1, '4': 1, '5': 9, '10': 'modelName'},
  ],
};

/// Descriptor for `DeployMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deployMetadataDescriptor = $convert.base64Decode('Cg5EZXBsb3lNZXRhZGF0YRIdCgptb2RlbF9uYW1lGAEgASgJUgltb2RlbE5hbWU=');
@$core.Deprecated('Use deployRequestDescriptor instead')
const DeployRequest$json = const {
  '1': 'DeployRequest',
  '2': const [
    const {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.viam.app.model.v1.DeployMetadata', '10': 'metadata'},
  ],
};

/// Descriptor for `DeployRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deployRequestDescriptor = $convert.base64Decode('Cg1EZXBsb3lSZXF1ZXN0Ej0KCG1ldGFkYXRhGAEgASgLMiEudmlhbS5hcHAubW9kZWwudjEuRGVwbG95TWV0YWRhdGFSCG1ldGFkYXRh');
@$core.Deprecated('Use uploadResponseDescriptor instead')
const UploadResponse$json = const {
  '1': 'UploadResponse',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.viam.app.model.v1.Status', '10': 'status'},
  ],
};

/// Descriptor for `UploadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadResponseDescriptor = $convert.base64Decode('Cg5VcGxvYWRSZXNwb25zZRIYCgdtZXNzYWdlGAEgASgJUgdtZXNzYWdlEjEKBnN0YXR1cxgCIAEoDjIZLnZpYW0uYXBwLm1vZGVsLnYxLlN0YXR1c1IGc3RhdHVz');
@$core.Deprecated('Use deleteResponseDescriptor instead')
const DeleteResponse$json = const {
  '1': 'DeleteResponse',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.viam.app.model.v1.Status', '10': 'status'},
  ],
};

/// Descriptor for `DeleteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteResponseDescriptor = $convert.base64Decode('Cg5EZWxldGVSZXNwb25zZRIYCgdtZXNzYWdlGAEgASgJUgdtZXNzYWdlEjEKBnN0YXR1cxgCIAEoDjIZLnZpYW0uYXBwLm1vZGVsLnYxLlN0YXR1c1IGc3RhdHVz');
@$core.Deprecated('Use deployResponseDescriptor instead')
const DeployResponse$json = const {
  '1': 'DeployResponse',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.viam.app.model.v1.Status', '10': 'status'},
  ],
};

/// Descriptor for `DeployResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deployResponseDescriptor = $convert.base64Decode('Cg5EZXBsb3lSZXNwb25zZRIYCgdtZXNzYWdlGAEgASgJUgdtZXNzYWdlEjEKBnN0YXR1cxgCIAEoDjIZLnZpYW0uYXBwLm1vZGVsLnYxLlN0YXR1c1IGc3RhdHVz');
@$core.Deprecated('Use syncedModelDescriptor instead')
const SyncedModel$json = const {
  '1': 'SyncedModel',
  '2': const [
    const {'1': 'org_id', '3': 1, '4': 1, '5': 9, '10': 'orgId'},
    const {'1': 'model_name', '3': 2, '4': 1, '5': 9, '10': 'modelName'},
    const {'1': 'associated_dataset', '3': 3, '4': 1, '5': 9, '10': 'associatedDataset'},
    const {'1': 'blob_path', '3': 4, '4': 1, '5': 9, '10': 'blobPath'},
    const {'1': 'sync_time', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'syncTime'},
  ],
};

/// Descriptor for `SyncedModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncedModelDescriptor = $convert.base64Decode('CgtTeW5jZWRNb2RlbBIVCgZvcmdfaWQYASABKAlSBW9yZ0lkEh0KCm1vZGVsX25hbWUYAiABKAlSCW1vZGVsTmFtZRItChJhc3NvY2lhdGVkX2RhdGFzZXQYAyABKAlSEWFzc29jaWF0ZWREYXRhc2V0EhsKCWJsb2JfcGF0aBgEIAEoCVIIYmxvYlBhdGgSNwoJc3luY190aW1lGAUgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIIc3luY1RpbWU=');
