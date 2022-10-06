///
//  Generated code. Do not modify.
//  source: service/slam/v1/slam.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../common/v1/common.pb.dart' as $1;
import '../../../google/protobuf/struct.pb.dart' as $2;

class GetPositionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPositionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.service.slam.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  GetPositionRequest._() : super();
  factory GetPositionRequest({
    $core.String? name,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
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
    ..hasRequiredFields = false
  ;

  GetMapRequest._() : super();
  factory GetMapRequest({
    $core.String? name,
    $core.String? mimeType,
    $1.Pose? cameraPosition,
    $core.bool? includeRobotMarker,
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

