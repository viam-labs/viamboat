///
//  Generated code. Do not modify.
//  source: service/slam/v1/slam.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/struct.pb.dart' as $2;
import '../../../common/v1/common.pb.dart' as $1;

class GetPositionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPositionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.service.slam.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOM<$2.Struct>(99, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extra', subBuilder: $2.Struct.create)
    ..hasRequiredFields = false
  ;

  GetPositionRequest._() : super();
  factory GetPositionRequest({
    $core.String? name,
    $2.Struct? extra,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (extra != null) {
      _result.extra = extra;
    }
    return _result;
  }
  factory GetPositionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPositionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPositionRequest clone() => GetPositionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPositionRequest copyWith(void Function(GetPositionRequest) updates) => super.copyWith((message) => updates(message as GetPositionRequest)) as GetPositionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPositionRequest create() => GetPositionRequest._();
  GetPositionRequest createEmptyInstance() => create();
  static $pb.PbList<GetPositionRequest> createRepeated() => $pb.PbList<GetPositionRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPositionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPositionRequest>(create);
  static GetPositionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(99)
  $2.Struct get extra => $_getN(1);
  @$pb.TagNumber(99)
  set extra($2.Struct v) { setField(99, v); }
  @$pb.TagNumber(99)
  $core.bool hasExtra() => $_has(1);
  @$pb.TagNumber(99)
  void clearExtra() => clearField(99);
  @$pb.TagNumber(99)
  $2.Struct ensureExtra() => $_ensure(1);
}

class GetPositionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPositionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.service.slam.v1'), createEmptyInstance: create)
    ..aOM<$1.PoseInFrame>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pose', subBuilder: $1.PoseInFrame.create)
    ..aOM<$2.Struct>(99, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extra', subBuilder: $2.Struct.create)
    ..hasRequiredFields = false
  ;

  GetPositionResponse._() : super();
  factory GetPositionResponse({
    $1.PoseInFrame? pose,
    $2.Struct? extra,
  }) {
    final _result = create();
    if (pose != null) {
      _result.pose = pose;
    }
    if (extra != null) {
      _result.extra = extra;
    }
    return _result;
  }
  factory GetPositionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPositionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPositionResponse clone() => GetPositionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPositionResponse copyWith(void Function(GetPositionResponse) updates) => super.copyWith((message) => updates(message as GetPositionResponse)) as GetPositionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPositionResponse create() => GetPositionResponse._();
  GetPositionResponse createEmptyInstance() => create();
  static $pb.PbList<GetPositionResponse> createRepeated() => $pb.PbList<GetPositionResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPositionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPositionResponse>(create);
  static GetPositionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $1.PoseInFrame get pose => $_getN(0);
  @$pb.TagNumber(1)
  set pose($1.PoseInFrame v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPose() => $_has(0);
  @$pb.TagNumber(1)
  void clearPose() => clearField(1);
  @$pb.TagNumber(1)
  $1.PoseInFrame ensurePose() => $_ensure(0);

  @$pb.TagNumber(99)
  $2.Struct get extra => $_getN(1);
  @$pb.TagNumber(99)
  set extra($2.Struct v) { setField(99, v); }
  @$pb.TagNumber(99)
  $core.bool hasExtra() => $_has(1);
  @$pb.TagNumber(99)
  void clearExtra() => clearField(99);
  @$pb.TagNumber(99)
  $2.Struct ensureExtra() => $_ensure(1);
}

class GetMapRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetMapRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.service.slam.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mimeType')
    ..aOM<$1.Pose>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cameraPosition', subBuilder: $1.Pose.create)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'includeRobotMarker')
    ..aOM<$2.Struct>(99, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extra', subBuilder: $2.Struct.create)
    ..hasRequiredFields = false
  ;

  GetMapRequest._() : super();
  factory GetMapRequest({
    $core.String? name,
    $core.String? mimeType,
    $1.Pose? cameraPosition,
    $core.bool? includeRobotMarker,
    $2.Struct? extra,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (mimeType != null) {
      _result.mimeType = mimeType;
    }
    if (cameraPosition != null) {
      _result.cameraPosition = cameraPosition;
    }
    if (includeRobotMarker != null) {
      _result.includeRobotMarker = includeRobotMarker;
    }
    if (extra != null) {
      _result.extra = extra;
    }
    return _result;
  }
  factory GetMapRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMapRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMapRequest clone() => GetMapRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMapRequest copyWith(void Function(GetMapRequest) updates) => super.copyWith((message) => updates(message as GetMapRequest)) as GetMapRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMapRequest create() => GetMapRequest._();
  GetMapRequest createEmptyInstance() => create();
  static $pb.PbList<GetMapRequest> createRepeated() => $pb.PbList<GetMapRequest>();
  @$core.pragma('dart2js:noInline')
  static GetMapRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMapRequest>(create);
  static GetMapRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get mimeType => $_getSZ(1);
  @$pb.TagNumber(2)
  set mimeType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMimeType() => $_has(1);
  @$pb.TagNumber(2)
  void clearMimeType() => clearField(2);

  @$pb.TagNumber(3)
  $1.Pose get cameraPosition => $_getN(2);
  @$pb.TagNumber(3)
  set cameraPosition($1.Pose v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCameraPosition() => $_has(2);
  @$pb.TagNumber(3)
  void clearCameraPosition() => clearField(3);
  @$pb.TagNumber(3)
  $1.Pose ensureCameraPosition() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.bool get includeRobotMarker => $_getBF(3);
  @$pb.TagNumber(4)
  set includeRobotMarker($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIncludeRobotMarker() => $_has(3);
  @$pb.TagNumber(4)
  void clearIncludeRobotMarker() => clearField(4);

  @$pb.TagNumber(99)
  $2.Struct get extra => $_getN(4);
  @$pb.TagNumber(99)
  set extra($2.Struct v) { setField(99, v); }
  @$pb.TagNumber(99)
  $core.bool hasExtra() => $_has(4);
  @$pb.TagNumber(99)
  void clearExtra() => clearField(99);
  @$pb.TagNumber(99)
  $2.Struct ensureExtra() => $_ensure(4);
}

enum GetMapResponse_Map {
  pointCloud, 
  image, 
  notSet
}

class GetMapResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GetMapResponse_Map> _GetMapResponse_MapByTag = {
    1 : GetMapResponse_Map.pointCloud,
    2 : GetMapResponse_Map.image,
    0 : GetMapResponse_Map.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetMapResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.service.slam.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<$1.PointCloudObject>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pointCloud', subBuilder: $1.PointCloudObject.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'image', $pb.PbFieldType.OY)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mimeType')
    ..hasRequiredFields = false
  ;

  GetMapResponse._() : super();
  factory GetMapResponse({
    $1.PointCloudObject? pointCloud,
    $core.List<$core.int>? image,
    $core.String? mimeType,
  }) {
    final _result = create();
    if (pointCloud != null) {
      _result.pointCloud = pointCloud;
    }
    if (image != null) {
      _result.image = image;
    }
    if (mimeType != null) {
      _result.mimeType = mimeType;
    }
    return _result;
  }
  factory GetMapResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMapResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMapResponse clone() => GetMapResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMapResponse copyWith(void Function(GetMapResponse) updates) => super.copyWith((message) => updates(message as GetMapResponse)) as GetMapResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMapResponse create() => GetMapResponse._();
  GetMapResponse createEmptyInstance() => create();
  static $pb.PbList<GetMapResponse> createRepeated() => $pb.PbList<GetMapResponse>();
  @$core.pragma('dart2js:noInline')
  static GetMapResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMapResponse>(create);
  static GetMapResponse? _defaultInstance;

  GetMapResponse_Map whichMap() => _GetMapResponse_MapByTag[$_whichOneof(0)]!;
  void clearMap() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $1.PointCloudObject get pointCloud => $_getN(0);
  @$pb.TagNumber(1)
  set pointCloud($1.PointCloudObject v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPointCloud() => $_has(0);
  @$pb.TagNumber(1)
  void clearPointCloud() => clearField(1);
  @$pb.TagNumber(1)
  $1.PointCloudObject ensurePointCloud() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get image => $_getN(1);
  @$pb.TagNumber(2)
  set image($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasImage() => $_has(1);
  @$pb.TagNumber(2)
  void clearImage() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get mimeType => $_getSZ(2);
  @$pb.TagNumber(3)
  set mimeType($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMimeType() => $_has(2);
  @$pb.TagNumber(3)
  void clearMimeType() => clearField(3);
}

class GetPositionNewRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPositionNewRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.service.slam.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  GetPositionNewRequest._() : super();
  factory GetPositionNewRequest({
    $core.String? name,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory GetPositionNewRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPositionNewRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPositionNewRequest clone() => GetPositionNewRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPositionNewRequest copyWith(void Function(GetPositionNewRequest) updates) => super.copyWith((message) => updates(message as GetPositionNewRequest)) as GetPositionNewRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPositionNewRequest create() => GetPositionNewRequest._();
  GetPositionNewRequest createEmptyInstance() => create();
  static $pb.PbList<GetPositionNewRequest> createRepeated() => $pb.PbList<GetPositionNewRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPositionNewRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPositionNewRequest>(create);
  static GetPositionNewRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class GetPositionNewResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPositionNewResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.service.slam.v1'), createEmptyInstance: create)
    ..aOM<$1.Pose>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pose', subBuilder: $1.Pose.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'componentReference')
    ..aOM<$2.Struct>(99, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extra', subBuilder: $2.Struct.create)
    ..hasRequiredFields = false
  ;

  GetPositionNewResponse._() : super();
  factory GetPositionNewResponse({
    $1.Pose? pose,
    $core.String? componentReference,
    $2.Struct? extra,
  }) {
    final _result = create();
    if (pose != null) {
      _result.pose = pose;
    }
    if (componentReference != null) {
      _result.componentReference = componentReference;
    }
    if (extra != null) {
      _result.extra = extra;
    }
    return _result;
  }
  factory GetPositionNewResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPositionNewResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPositionNewResponse clone() => GetPositionNewResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPositionNewResponse copyWith(void Function(GetPositionNewResponse) updates) => super.copyWith((message) => updates(message as GetPositionNewResponse)) as GetPositionNewResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPositionNewResponse create() => GetPositionNewResponse._();
  GetPositionNewResponse createEmptyInstance() => create();
  static $pb.PbList<GetPositionNewResponse> createRepeated() => $pb.PbList<GetPositionNewResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPositionNewResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPositionNewResponse>(create);
  static GetPositionNewResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Pose get pose => $_getN(0);
  @$pb.TagNumber(1)
  set pose($1.Pose v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPose() => $_has(0);
  @$pb.TagNumber(1)
  void clearPose() => clearField(1);
  @$pb.TagNumber(1)
  $1.Pose ensurePose() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get componentReference => $_getSZ(1);
  @$pb.TagNumber(2)
  set componentReference($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasComponentReference() => $_has(1);
  @$pb.TagNumber(2)
  void clearComponentReference() => clearField(2);

  @$pb.TagNumber(99)
  $2.Struct get extra => $_getN(2);
  @$pb.TagNumber(99)
  set extra($2.Struct v) { setField(99, v); }
  @$pb.TagNumber(99)
  $core.bool hasExtra() => $_has(2);
  @$pb.TagNumber(99)
  void clearExtra() => clearField(99);
  @$pb.TagNumber(99)
  $2.Struct ensureExtra() => $_ensure(2);
}

class GetPointCloudMapRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPointCloudMapRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.service.slam.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  GetPointCloudMapRequest._() : super();
  factory GetPointCloudMapRequest({
    $core.String? name,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory GetPointCloudMapRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPointCloudMapRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPointCloudMapRequest clone() => GetPointCloudMapRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPointCloudMapRequest copyWith(void Function(GetPointCloudMapRequest) updates) => super.copyWith((message) => updates(message as GetPointCloudMapRequest)) as GetPointCloudMapRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPointCloudMapRequest create() => GetPointCloudMapRequest._();
  GetPointCloudMapRequest createEmptyInstance() => create();
  static $pb.PbList<GetPointCloudMapRequest> createRepeated() => $pb.PbList<GetPointCloudMapRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPointCloudMapRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPointCloudMapRequest>(create);
  static GetPointCloudMapRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class GetPointCloudMapResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPointCloudMapResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.service.slam.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pointCloudPcd', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GetPointCloudMapResponse._() : super();
  factory GetPointCloudMapResponse({
    $core.List<$core.int>? pointCloudPcd,
  }) {
    final _result = create();
    if (pointCloudPcd != null) {
      _result.pointCloudPcd = pointCloudPcd;
    }
    return _result;
  }
  factory GetPointCloudMapResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPointCloudMapResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPointCloudMapResponse clone() => GetPointCloudMapResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPointCloudMapResponse copyWith(void Function(GetPointCloudMapResponse) updates) => super.copyWith((message) => updates(message as GetPointCloudMapResponse)) as GetPointCloudMapResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPointCloudMapResponse create() => GetPointCloudMapResponse._();
  GetPointCloudMapResponse createEmptyInstance() => create();
  static $pb.PbList<GetPointCloudMapResponse> createRepeated() => $pb.PbList<GetPointCloudMapResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPointCloudMapResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPointCloudMapResponse>(create);
  static GetPointCloudMapResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get pointCloudPcd => $_getN(0);
  @$pb.TagNumber(1)
  set pointCloudPcd($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPointCloudPcd() => $_has(0);
  @$pb.TagNumber(1)
  void clearPointCloudPcd() => clearField(1);
}

class GetInternalStateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetInternalStateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.service.slam.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  GetInternalStateRequest._() : super();
  factory GetInternalStateRequest({
    $core.String? name,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory GetInternalStateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInternalStateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInternalStateRequest clone() => GetInternalStateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInternalStateRequest copyWith(void Function(GetInternalStateRequest) updates) => super.copyWith((message) => updates(message as GetInternalStateRequest)) as GetInternalStateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetInternalStateRequest create() => GetInternalStateRequest._();
  GetInternalStateRequest createEmptyInstance() => create();
  static $pb.PbList<GetInternalStateRequest> createRepeated() => $pb.PbList<GetInternalStateRequest>();
  @$core.pragma('dart2js:noInline')
  static GetInternalStateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInternalStateRequest>(create);
  static GetInternalStateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class GetInternalStateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetInternalStateResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.service.slam.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'internalState', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GetInternalStateResponse._() : super();
  factory GetInternalStateResponse({
    $core.List<$core.int>? internalState,
  }) {
    final _result = create();
    if (internalState != null) {
      _result.internalState = internalState;
    }
    return _result;
  }
  factory GetInternalStateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInternalStateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInternalStateResponse clone() => GetInternalStateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInternalStateResponse copyWith(void Function(GetInternalStateResponse) updates) => super.copyWith((message) => updates(message as GetInternalStateResponse)) as GetInternalStateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetInternalStateResponse create() => GetInternalStateResponse._();
  GetInternalStateResponse createEmptyInstance() => create();
  static $pb.PbList<GetInternalStateResponse> createRepeated() => $pb.PbList<GetInternalStateResponse>();
  @$core.pragma('dart2js:noInline')
  static GetInternalStateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInternalStateResponse>(create);
  static GetInternalStateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get internalState => $_getN(0);
  @$pb.TagNumber(1)
  set internalState($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInternalState() => $_has(0);
  @$pb.TagNumber(1)
  void clearInternalState() => clearField(1);
}

class GetPointCloudMapStreamRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPointCloudMapStreamRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.service.slam.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  GetPointCloudMapStreamRequest._() : super();
  factory GetPointCloudMapStreamRequest({
    $core.String? name,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory GetPointCloudMapStreamRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPointCloudMapStreamRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPointCloudMapStreamRequest clone() => GetPointCloudMapStreamRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPointCloudMapStreamRequest copyWith(void Function(GetPointCloudMapStreamRequest) updates) => super.copyWith((message) => updates(message as GetPointCloudMapStreamRequest)) as GetPointCloudMapStreamRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPointCloudMapStreamRequest create() => GetPointCloudMapStreamRequest._();
  GetPointCloudMapStreamRequest createEmptyInstance() => create();
  static $pb.PbList<GetPointCloudMapStreamRequest> createRepeated() => $pb.PbList<GetPointCloudMapStreamRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPointCloudMapStreamRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPointCloudMapStreamRequest>(create);
  static GetPointCloudMapStreamRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class GetPointCloudMapStreamResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPointCloudMapStreamResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.service.slam.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pointCloudPcdChunk', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GetPointCloudMapStreamResponse._() : super();
  factory GetPointCloudMapStreamResponse({
    $core.List<$core.int>? pointCloudPcdChunk,
  }) {
    final _result = create();
    if (pointCloudPcdChunk != null) {
      _result.pointCloudPcdChunk = pointCloudPcdChunk;
    }
    return _result;
  }
  factory GetPointCloudMapStreamResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPointCloudMapStreamResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPointCloudMapStreamResponse clone() => GetPointCloudMapStreamResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPointCloudMapStreamResponse copyWith(void Function(GetPointCloudMapStreamResponse) updates) => super.copyWith((message) => updates(message as GetPointCloudMapStreamResponse)) as GetPointCloudMapStreamResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPointCloudMapStreamResponse create() => GetPointCloudMapStreamResponse._();
  GetPointCloudMapStreamResponse createEmptyInstance() => create();
  static $pb.PbList<GetPointCloudMapStreamResponse> createRepeated() => $pb.PbList<GetPointCloudMapStreamResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPointCloudMapStreamResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPointCloudMapStreamResponse>(create);
  static GetPointCloudMapStreamResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get pointCloudPcdChunk => $_getN(0);
  @$pb.TagNumber(1)
  set pointCloudPcdChunk($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPointCloudPcdChunk() => $_has(0);
  @$pb.TagNumber(1)
  void clearPointCloudPcdChunk() => clearField(1);
}

class GetInternalStateStreamRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetInternalStateStreamRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.service.slam.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  GetInternalStateStreamRequest._() : super();
  factory GetInternalStateStreamRequest({
    $core.String? name,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory GetInternalStateStreamRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInternalStateStreamRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInternalStateStreamRequest clone() => GetInternalStateStreamRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInternalStateStreamRequest copyWith(void Function(GetInternalStateStreamRequest) updates) => super.copyWith((message) => updates(message as GetInternalStateStreamRequest)) as GetInternalStateStreamRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetInternalStateStreamRequest create() => GetInternalStateStreamRequest._();
  GetInternalStateStreamRequest createEmptyInstance() => create();
  static $pb.PbList<GetInternalStateStreamRequest> createRepeated() => $pb.PbList<GetInternalStateStreamRequest>();
  @$core.pragma('dart2js:noInline')
  static GetInternalStateStreamRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInternalStateStreamRequest>(create);
  static GetInternalStateStreamRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class GetInternalStateStreamResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetInternalStateStreamResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.service.slam.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'internalStateChunk', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GetInternalStateStreamResponse._() : super();
  factory GetInternalStateStreamResponse({
    $core.List<$core.int>? internalStateChunk,
  }) {
    final _result = create();
    if (internalStateChunk != null) {
      _result.internalStateChunk = internalStateChunk;
    }
    return _result;
  }
  factory GetInternalStateStreamResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInternalStateStreamResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInternalStateStreamResponse clone() => GetInternalStateStreamResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInternalStateStreamResponse copyWith(void Function(GetInternalStateStreamResponse) updates) => super.copyWith((message) => updates(message as GetInternalStateStreamResponse)) as GetInternalStateStreamResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetInternalStateStreamResponse create() => GetInternalStateStreamResponse._();
  GetInternalStateStreamResponse createEmptyInstance() => create();
  static $pb.PbList<GetInternalStateStreamResponse> createRepeated() => $pb.PbList<GetInternalStateStreamResponse>();
  @$core.pragma('dart2js:noInline')
  static GetInternalStateStreamResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInternalStateStreamResponse>(create);
  static GetInternalStateStreamResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get internalStateChunk => $_getN(0);
  @$pb.TagNumber(1)
  set internalStateChunk($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInternalStateChunk() => $_has(0);
  @$pb.TagNumber(1)
  void clearInternalStateChunk() => clearField(1);
}

