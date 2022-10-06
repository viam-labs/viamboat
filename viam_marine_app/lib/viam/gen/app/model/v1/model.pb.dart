///
//  Generated code. Do not modify.
//  source: app/model/v1/model.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/timestamp.pb.dart' as $1;

import 'model.pbenum.dart';

export 'model.pbenum.dart';

class FileData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FileData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.model.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  FileData._() : super();
  factory FileData({
    $core.List<$core.int>? data,
  }) {
    final _result = create();
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory FileData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FileData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FileData clone() => FileData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FileData copyWith(void Function(FileData) updates) => super.copyWith((message) => updates(message as FileData)) as FileData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FileData create() => FileData._();
  FileData createEmptyInstance() => create();
  static $pb.PbList<FileData> createRepeated() => $pb.PbList<FileData>();
  @$core.pragma('dart2js:noInline')
  static FileData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileData>(create);
  static FileData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
}

class UploadMetadata extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UploadMetadata', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.model.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orgId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modelName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'associatedDataset')
    ..hasRequiredFields = false
  ;

  UploadMetadata._() : super();
  factory UploadMetadata({
    $core.String? orgId,
    $core.String? modelName,
    $core.String? associatedDataset,
  }) {
    final _result = create();
    if (orgId != null) {
      _result.orgId = orgId;
    }
    if (modelName != null) {
      _result.modelName = modelName;
    }
    if (associatedDataset != null) {
      _result.associatedDataset = associatedDataset;
    }
    return _result;
  }
  factory UploadMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadMetadata clone() => UploadMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadMetadata copyWith(void Function(UploadMetadata) updates) => super.copyWith((message) => updates(message as UploadMetadata)) as UploadMetadata; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadMetadata create() => UploadMetadata._();
  UploadMetadata createEmptyInstance() => create();
  static $pb.PbList<UploadMetadata> createRepeated() => $pb.PbList<UploadMetadata>();
  @$core.pragma('dart2js:noInline')
  static UploadMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadMetadata>(create);
  static UploadMetadata? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get orgId => $_getSZ(0);
  @$pb.TagNumber(1)
  set orgId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrgId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrgId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get modelName => $_getSZ(1);
  @$pb.TagNumber(2)
  set modelName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasModelName() => $_has(1);
  @$pb.TagNumber(2)
  void clearModelName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get associatedDataset => $_getSZ(2);
  @$pb.TagNumber(3)
  set associatedDataset($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAssociatedDataset() => $_has(2);
  @$pb.TagNumber(3)
  void clearAssociatedDataset() => clearField(3);
}

enum UploadRequest_UploadPacket {
  metadata, 
  fileContents, 
  notSet
}

class UploadRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, UploadRequest_UploadPacket> _UploadRequest_UploadPacketByTag = {
    1 : UploadRequest_UploadPacket.metadata,
    2 : UploadRequest_UploadPacket.fileContents,
    0 : UploadRequest_UploadPacket.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UploadRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.model.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<UploadMetadata>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metadata', subBuilder: UploadMetadata.create)
    ..aOM<FileData>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileContents', subBuilder: FileData.create)
    ..hasRequiredFields = false
  ;

  UploadRequest._() : super();
  factory UploadRequest({
    UploadMetadata? metadata,
    FileData? fileContents,
  }) {
    final _result = create();
    if (metadata != null) {
      _result.metadata = metadata;
    }
    if (fileContents != null) {
      _result.fileContents = fileContents;
    }
    return _result;
  }
  factory UploadRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadRequest clone() => UploadRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadRequest copyWith(void Function(UploadRequest) updates) => super.copyWith((message) => updates(message as UploadRequest)) as UploadRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadRequest create() => UploadRequest._();
  UploadRequest createEmptyInstance() => create();
  static $pb.PbList<UploadRequest> createRepeated() => $pb.PbList<UploadRequest>();
  @$core.pragma('dart2js:noInline')
  static UploadRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadRequest>(create);
  static UploadRequest? _defaultInstance;

  UploadRequest_UploadPacket whichUploadPacket() => _UploadRequest_UploadPacketByTag[$_whichOneof(0)]!;
  void clearUploadPacket() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  UploadMetadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(UploadMetadata v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  UploadMetadata ensureMetadata() => $_ensure(0);

  @$pb.TagNumber(2)
  FileData get fileContents => $_getN(1);
  @$pb.TagNumber(2)
  set fileContents(FileData v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFileContents() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileContents() => clearField(2);
  @$pb.TagNumber(2)
  FileData ensureFileContents() => $_ensure(1);
}

class DeleteMetadata extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteMetadata', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.model.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orgId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modelName')
    ..hasRequiredFields = false
  ;

  DeleteMetadata._() : super();
  factory DeleteMetadata({
    $core.String? orgId,
    $core.String? modelName,
  }) {
    final _result = create();
    if (orgId != null) {
      _result.orgId = orgId;
    }
    if (modelName != null) {
      _result.modelName = modelName;
    }
    return _result;
  }
  factory DeleteMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteMetadata clone() => DeleteMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteMetadata copyWith(void Function(DeleteMetadata) updates) => super.copyWith((message) => updates(message as DeleteMetadata)) as DeleteMetadata; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteMetadata create() => DeleteMetadata._();
  DeleteMetadata createEmptyInstance() => create();
  static $pb.PbList<DeleteMetadata> createRepeated() => $pb.PbList<DeleteMetadata>();
  @$core.pragma('dart2js:noInline')
  static DeleteMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteMetadata>(create);
  static DeleteMetadata? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get orgId => $_getSZ(0);
  @$pb.TagNumber(1)
  set orgId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrgId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrgId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get modelName => $_getSZ(1);
  @$pb.TagNumber(2)
  set modelName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasModelName() => $_has(1);
  @$pb.TagNumber(2)
  void clearModelName() => clearField(2);
}

class DeleteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.model.v1'), createEmptyInstance: create)
    ..aOM<DeleteMetadata>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metadata', subBuilder: DeleteMetadata.create)
    ..hasRequiredFields = false
  ;

  DeleteRequest._() : super();
  factory DeleteRequest({
    DeleteMetadata? metadata,
  }) {
    final _result = create();
    if (metadata != null) {
      _result.metadata = metadata;
    }
    return _result;
  }
  factory DeleteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteRequest clone() => DeleteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteRequest copyWith(void Function(DeleteRequest) updates) => super.copyWith((message) => updates(message as DeleteRequest)) as DeleteRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteRequest create() => DeleteRequest._();
  DeleteRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteRequest> createRepeated() => $pb.PbList<DeleteRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteRequest>(create);
  static DeleteRequest? _defaultInstance;

  @$pb.TagNumber(1)
  DeleteMetadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(DeleteMetadata v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  DeleteMetadata ensureMetadata() => $_ensure(0);
}

class DeployMetadata extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeployMetadata', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.model.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modelName')
    ..hasRequiredFields = false
  ;

  DeployMetadata._() : super();
  factory DeployMetadata({
    $core.String? modelName,
  }) {
    final _result = create();
    if (modelName != null) {
      _result.modelName = modelName;
    }
    return _result;
  }
  factory DeployMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeployMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeployMetadata clone() => DeployMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeployMetadata copyWith(void Function(DeployMetadata) updates) => super.copyWith((message) => updates(message as DeployMetadata)) as DeployMetadata; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeployMetadata create() => DeployMetadata._();
  DeployMetadata createEmptyInstance() => create();
  static $pb.PbList<DeployMetadata> createRepeated() => $pb.PbList<DeployMetadata>();
  @$core.pragma('dart2js:noInline')
  static DeployMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeployMetadata>(create);
  static DeployMetadata? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get modelName => $_getSZ(0);
  @$pb.TagNumber(1)
  set modelName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasModelName() => $_has(0);
  @$pb.TagNumber(1)
  void clearModelName() => clearField(1);
}

class DeployRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeployRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.model.v1'), createEmptyInstance: create)
    ..aOM<DeployMetadata>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metadata', subBuilder: DeployMetadata.create)
    ..hasRequiredFields = false
  ;

  DeployRequest._() : super();
  factory DeployRequest({
    DeployMetadata? metadata,
  }) {
    final _result = create();
    if (metadata != null) {
      _result.metadata = metadata;
    }
    return _result;
  }
  factory DeployRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeployRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeployRequest clone() => DeployRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeployRequest copyWith(void Function(DeployRequest) updates) => super.copyWith((message) => updates(message as DeployRequest)) as DeployRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeployRequest create() => DeployRequest._();
  DeployRequest createEmptyInstance() => create();
  static $pb.PbList<DeployRequest> createRepeated() => $pb.PbList<DeployRequest>();
  @$core.pragma('dart2js:noInline')
  static DeployRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeployRequest>(create);
  static DeployRequest? _defaultInstance;

  @$pb.TagNumber(1)
  DeployMetadata get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(DeployMetadata v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  DeployMetadata ensureMetadata() => $_ensure(0);
}

class UploadResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UploadResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.model.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..e<Status>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: Status.UNSPECIFIED, valueOf: Status.valueOf, enumValues: Status.values)
    ..hasRequiredFields = false
  ;

  UploadResponse._() : super();
  factory UploadResponse({
    $core.String? message,
    Status? status,
  }) {
    final _result = create();
    if (message != null) {
      _result.message = message;
    }
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory UploadResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadResponse clone() => UploadResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadResponse copyWith(void Function(UploadResponse) updates) => super.copyWith((message) => updates(message as UploadResponse)) as UploadResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadResponse create() => UploadResponse._();
  UploadResponse createEmptyInstance() => create();
  static $pb.PbList<UploadResponse> createRepeated() => $pb.PbList<UploadResponse>();
  @$core.pragma('dart2js:noInline')
  static UploadResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadResponse>(create);
  static UploadResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);

  @$pb.TagNumber(2)
  Status get status => $_getN(1);
  @$pb.TagNumber(2)
  set status(Status v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
}

class DeleteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.model.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..e<Status>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: Status.UNSPECIFIED, valueOf: Status.valueOf, enumValues: Status.values)
    ..hasRequiredFields = false
  ;

  DeleteResponse._() : super();
  factory DeleteResponse({
    $core.String? message,
    Status? status,
  }) {
    final _result = create();
    if (message != null) {
      _result.message = message;
    }
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory DeleteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteResponse clone() => DeleteResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteResponse copyWith(void Function(DeleteResponse) updates) => super.copyWith((message) => updates(message as DeleteResponse)) as DeleteResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteResponse create() => DeleteResponse._();
  DeleteResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteResponse> createRepeated() => $pb.PbList<DeleteResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteResponse>(create);
  static DeleteResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);

  @$pb.TagNumber(2)
  Status get status => $_getN(1);
  @$pb.TagNumber(2)
  set status(Status v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
}

class DeployResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeployResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.model.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..e<Status>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: Status.UNSPECIFIED, valueOf: Status.valueOf, enumValues: Status.values)
    ..hasRequiredFields = false
  ;

  DeployResponse._() : super();
  factory DeployResponse({
    $core.String? message,
    Status? status,
  }) {
    final _result = create();
    if (message != null) {
      _result.message = message;
    }
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory DeployResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeployResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeployResponse clone() => DeployResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeployResponse copyWith(void Function(DeployResponse) updates) => super.copyWith((message) => updates(message as DeployResponse)) as DeployResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeployResponse create() => DeployResponse._();
  DeployResponse createEmptyInstance() => create();
  static $pb.PbList<DeployResponse> createRepeated() => $pb.PbList<DeployResponse>();
  @$core.pragma('dart2js:noInline')
  static DeployResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeployResponse>(create);
  static DeployResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);

  @$pb.TagNumber(2)
  Status get status => $_getN(1);
  @$pb.TagNumber(2)
  set status(Status v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
}

class SyncedModel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SyncedModel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.model.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orgId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modelName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'associatedDataset')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blobPath')
    ..aOM<$1.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'syncTime', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  SyncedModel._() : super();
  factory SyncedModel({
    $core.String? orgId,
    $core.String? modelName,
    $core.String? associatedDataset,
    $core.String? blobPath,
    $1.Timestamp? syncTime,
  }) {
    final _result = create();
    if (orgId != null) {
      _result.orgId = orgId;
    }
    if (modelName != null) {
      _result.modelName = modelName;
    }
    if (associatedDataset != null) {
      _result.associatedDataset = associatedDataset;
    }
    if (blobPath != null) {
      _result.blobPath = blobPath;
    }
    if (syncTime != null) {
      _result.syncTime = syncTime;
    }
    return _result;
  }
  factory SyncedModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncedModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncedModel clone() => SyncedModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncedModel copyWith(void Function(SyncedModel) updates) => super.copyWith((message) => updates(message as SyncedModel)) as SyncedModel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SyncedModel create() => SyncedModel._();
  SyncedModel createEmptyInstance() => create();
  static $pb.PbList<SyncedModel> createRepeated() => $pb.PbList<SyncedModel>();
  @$core.pragma('dart2js:noInline')
  static SyncedModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncedModel>(create);
  static SyncedModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get orgId => $_getSZ(0);
  @$pb.TagNumber(1)
  set orgId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrgId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrgId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get modelName => $_getSZ(1);
  @$pb.TagNumber(2)
  set modelName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasModelName() => $_has(1);
  @$pb.TagNumber(2)
  void clearModelName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get associatedDataset => $_getSZ(2);
  @$pb.TagNumber(3)
  set associatedDataset($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAssociatedDataset() => $_has(2);
  @$pb.TagNumber(3)
  void clearAssociatedDataset() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get blobPath => $_getSZ(3);
  @$pb.TagNumber(4)
  set blobPath($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBlobPath() => $_has(3);
  @$pb.TagNumber(4)
  void clearBlobPath() => clearField(4);

  @$pb.TagNumber(5)
  $1.Timestamp get syncTime => $_getN(4);
  @$pb.TagNumber(5)
  set syncTime($1.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSyncTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearSyncTime() => clearField(5);
  @$pb.TagNumber(5)
  $1.Timestamp ensureSyncTime() => $_ensure(4);
}

