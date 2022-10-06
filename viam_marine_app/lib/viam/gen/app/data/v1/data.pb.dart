///
//  Generated code. Do not modify.
//  source: app/data/v1/data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/any.pb.dart' as $1;
import '../../../google/protobuf/timestamp.pb.dart' as $2;
import '../../../google/protobuf/struct.pb.dart' as $3;

class DataRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DataRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.data.v1'), createEmptyInstance: create)
    ..aOM<Filter>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'filter', subBuilder: Filter.create)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'skip')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limit')
    ..hasRequiredFields = false
  ;

  DataRequest._() : super();
  factory DataRequest({
    Filter? filter,
    $fixnum.Int64? skip,
    $fixnum.Int64? limit,
  }) {
    final _result = create();
    if (filter != null) {
      _result.filter = filter;
    }
    if (skip != null) {
      _result.skip = skip;
    }
    if (limit != null) {
      _result.limit = limit;
    }
    return _result;
  }
  factory DataRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DataRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DataRequest clone() => DataRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DataRequest copyWith(void Function(DataRequest) updates) => super.copyWith((message) => updates(message as DataRequest)) as DataRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DataRequest create() => DataRequest._();
  DataRequest createEmptyInstance() => create();
  static $pb.PbList<DataRequest> createRepeated() => $pb.PbList<DataRequest>();
  @$core.pragma('dart2js:noInline')
  static DataRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DataRequest>(create);
  static DataRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Filter get filter => $_getN(0);
  @$pb.TagNumber(1)
  set filter(Filter v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilter() => clearField(1);
  @$pb.TagNumber(1)
  Filter ensureFilter() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get skip => $_getI64(1);
  @$pb.TagNumber(2)
  set skip($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSkip() => $_has(1);
  @$pb.TagNumber(2)
  void clearSkip() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get limit => $_getI64(2);
  @$pb.TagNumber(3)
  set limit($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLimit() => $_has(2);
  @$pb.TagNumber(3)
  void clearLimit() => clearField(3);
}

class Filter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Filter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.data.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'componentName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'componentType')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'componentModel')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'method')
    ..pPS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tags')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'robotName')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'robotId')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'partName')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'partId')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationId')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orgId')
    ..pPS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mimeType')
    ..aOM<CaptureInterval>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'interval', subBuilder: CaptureInterval.create)
    ..hasRequiredFields = false
  ;

  Filter._() : super();
  factory Filter({
    $core.String? componentName,
    $core.String? componentType,
    $core.String? componentModel,
    $core.String? method,
    $core.Iterable<$core.String>? tags,
    $core.String? robotName,
    $core.String? robotId,
    $core.String? partName,
    $core.String? partId,
    $core.String? locationId,
    $core.String? orgId,
    $core.Iterable<$core.String>? mimeType,
    CaptureInterval? interval,
  }) {
    final _result = create();
    if (componentName != null) {
      _result.componentName = componentName;
    }
    if (componentType != null) {
      _result.componentType = componentType;
    }
    if (componentModel != null) {
      _result.componentModel = componentModel;
    }
    if (method != null) {
      _result.method = method;
    }
    if (tags != null) {
      _result.tags.addAll(tags);
    }
    if (robotName != null) {
      _result.robotName = robotName;
    }
    if (robotId != null) {
      _result.robotId = robotId;
    }
    if (partName != null) {
      _result.partName = partName;
    }
    if (partId != null) {
      _result.partId = partId;
    }
    if (locationId != null) {
      _result.locationId = locationId;
    }
    if (orgId != null) {
      _result.orgId = orgId;
    }
    if (mimeType != null) {
      _result.mimeType.addAll(mimeType);
    }
    if (interval != null) {
      _result.interval = interval;
    }
    return _result;
  }
  factory Filter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Filter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Filter clone() => Filter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Filter copyWith(void Function(Filter) updates) => super.copyWith((message) => updates(message as Filter)) as Filter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Filter create() => Filter._();
  Filter createEmptyInstance() => create();
  static $pb.PbList<Filter> createRepeated() => $pb.PbList<Filter>();
  @$core.pragma('dart2js:noInline')
  static Filter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Filter>(create);
  static Filter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get componentName => $_getSZ(0);
  @$pb.TagNumber(1)
  set componentName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasComponentName() => $_has(0);
  @$pb.TagNumber(1)
  void clearComponentName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get componentType => $_getSZ(1);
  @$pb.TagNumber(2)
  set componentType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasComponentType() => $_has(1);
  @$pb.TagNumber(2)
  void clearComponentType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get componentModel => $_getSZ(2);
  @$pb.TagNumber(3)
  set componentModel($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasComponentModel() => $_has(2);
  @$pb.TagNumber(3)
  void clearComponentModel() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get method => $_getSZ(3);
  @$pb.TagNumber(4)
  set method($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMethod() => $_has(3);
  @$pb.TagNumber(4)
  void clearMethod() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.String> get tags => $_getList(4);

  @$pb.TagNumber(6)
  $core.String get robotName => $_getSZ(5);
  @$pb.TagNumber(6)
  set robotName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRobotName() => $_has(5);
  @$pb.TagNumber(6)
  void clearRobotName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get robotId => $_getSZ(6);
  @$pb.TagNumber(7)
  set robotId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRobotId() => $_has(6);
  @$pb.TagNumber(7)
  void clearRobotId() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get partName => $_getSZ(7);
  @$pb.TagNumber(8)
  set partName($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPartName() => $_has(7);
  @$pb.TagNumber(8)
  void clearPartName() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get partId => $_getSZ(8);
  @$pb.TagNumber(9)
  set partId($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasPartId() => $_has(8);
  @$pb.TagNumber(9)
  void clearPartId() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get locationId => $_getSZ(9);
  @$pb.TagNumber(10)
  set locationId($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasLocationId() => $_has(9);
  @$pb.TagNumber(10)
  void clearLocationId() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get orgId => $_getSZ(10);
  @$pb.TagNumber(11)
  set orgId($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasOrgId() => $_has(10);
  @$pb.TagNumber(11)
  void clearOrgId() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<$core.String> get mimeType => $_getList(11);

  @$pb.TagNumber(13)
  CaptureInterval get interval => $_getN(12);
  @$pb.TagNumber(13)
  set interval(CaptureInterval v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasInterval() => $_has(12);
  @$pb.TagNumber(13)
  void clearInterval() => clearField(13);
  @$pb.TagNumber(13)
  CaptureInterval ensureInterval() => $_ensure(12);
}

class CaptureMetadata extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CaptureMetadata', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.data.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'robotName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'robotId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'partName')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'partId')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'componentType')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'componentModel')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'componentName')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'methodName')
    ..m<$core.String, $1.Any>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'methodParameters', entryClassName: 'CaptureMetadata.MethodParametersEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $1.Any.create, packageName: const $pb.PackageName('viam.app.data.v1'))
    ..pPS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tags')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mimeType')
    ..hasRequiredFields = false
  ;

  CaptureMetadata._() : super();
  factory CaptureMetadata({
    $core.String? locationId,
    $core.String? robotName,
    $core.String? robotId,
    $core.String? partName,
    $core.String? partId,
    $core.String? componentType,
    $core.String? componentModel,
    $core.String? componentName,
    $core.String? methodName,
    $core.Map<$core.String, $1.Any>? methodParameters,
    $core.Iterable<$core.String>? tags,
    $core.String? mimeType,
  }) {
    final _result = create();
    if (locationId != null) {
      _result.locationId = locationId;
    }
    if (robotName != null) {
      _result.robotName = robotName;
    }
    if (robotId != null) {
      _result.robotId = robotId;
    }
    if (partName != null) {
      _result.partName = partName;
    }
    if (partId != null) {
      _result.partId = partId;
    }
    if (componentType != null) {
      _result.componentType = componentType;
    }
    if (componentModel != null) {
      _result.componentModel = componentModel;
    }
    if (componentName != null) {
      _result.componentName = componentName;
    }
    if (methodName != null) {
      _result.methodName = methodName;
    }
    if (methodParameters != null) {
      _result.methodParameters.addAll(methodParameters);
    }
    if (tags != null) {
      _result.tags.addAll(tags);
    }
    if (mimeType != null) {
      _result.mimeType = mimeType;
    }
    return _result;
  }
  factory CaptureMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CaptureMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CaptureMetadata clone() => CaptureMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CaptureMetadata copyWith(void Function(CaptureMetadata) updates) => super.copyWith((message) => updates(message as CaptureMetadata)) as CaptureMetadata; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CaptureMetadata create() => CaptureMetadata._();
  CaptureMetadata createEmptyInstance() => create();
  static $pb.PbList<CaptureMetadata> createRepeated() => $pb.PbList<CaptureMetadata>();
  @$core.pragma('dart2js:noInline')
  static CaptureMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CaptureMetadata>(create);
  static CaptureMetadata? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get locationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set locationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocationId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get robotName => $_getSZ(1);
  @$pb.TagNumber(2)
  set robotName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRobotName() => $_has(1);
  @$pb.TagNumber(2)
  void clearRobotName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get robotId => $_getSZ(2);
  @$pb.TagNumber(3)
  set robotId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRobotId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRobotId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get partName => $_getSZ(3);
  @$pb.TagNumber(4)
  set partName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPartName() => $_has(3);
  @$pb.TagNumber(4)
  void clearPartName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get partId => $_getSZ(4);
  @$pb.TagNumber(5)
  set partId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPartId() => $_has(4);
  @$pb.TagNumber(5)
  void clearPartId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get componentType => $_getSZ(5);
  @$pb.TagNumber(6)
  set componentType($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasComponentType() => $_has(5);
  @$pb.TagNumber(6)
  void clearComponentType() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get componentModel => $_getSZ(6);
  @$pb.TagNumber(7)
  set componentModel($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasComponentModel() => $_has(6);
  @$pb.TagNumber(7)
  void clearComponentModel() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get componentName => $_getSZ(7);
  @$pb.TagNumber(8)
  set componentName($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasComponentName() => $_has(7);
  @$pb.TagNumber(8)
  void clearComponentName() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get methodName => $_getSZ(8);
  @$pb.TagNumber(9)
  set methodName($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasMethodName() => $_has(8);
  @$pb.TagNumber(9)
  void clearMethodName() => clearField(9);

  @$pb.TagNumber(10)
  $core.Map<$core.String, $1.Any> get methodParameters => $_getMap(9);

  @$pb.TagNumber(11)
  $core.List<$core.String> get tags => $_getList(10);

  @$pb.TagNumber(12)
  $core.String get mimeType => $_getSZ(11);
  @$pb.TagNumber(12)
  set mimeType($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasMimeType() => $_has(11);
  @$pb.TagNumber(12)
  void clearMimeType() => clearField(12);
}

class CaptureInterval extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CaptureInterval', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.data.v1'), createEmptyInstance: create)
    ..aOM<$2.Timestamp>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'start', subBuilder: $2.Timestamp.create)
    ..aOM<$2.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'end', subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false
  ;

  CaptureInterval._() : super();
  factory CaptureInterval({
    $2.Timestamp? start,
    $2.Timestamp? end,
  }) {
    final _result = create();
    if (start != null) {
      _result.start = start;
    }
    if (end != null) {
      _result.end = end;
    }
    return _result;
  }
  factory CaptureInterval.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CaptureInterval.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CaptureInterval clone() => CaptureInterval()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CaptureInterval copyWith(void Function(CaptureInterval) updates) => super.copyWith((message) => updates(message as CaptureInterval)) as CaptureInterval; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CaptureInterval create() => CaptureInterval._();
  CaptureInterval createEmptyInstance() => create();
  static $pb.PbList<CaptureInterval> createRepeated() => $pb.PbList<CaptureInterval>();
  @$core.pragma('dart2js:noInline')
  static CaptureInterval getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CaptureInterval>(create);
  static CaptureInterval? _defaultInstance;

  @$pb.TagNumber(1)
  $2.Timestamp get start => $_getN(0);
  @$pb.TagNumber(1)
  set start($2.Timestamp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStart() => $_has(0);
  @$pb.TagNumber(1)
  void clearStart() => clearField(1);
  @$pb.TagNumber(1)
  $2.Timestamp ensureStart() => $_ensure(0);

  @$pb.TagNumber(2)
  $2.Timestamp get end => $_getN(1);
  @$pb.TagNumber(2)
  set end($2.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnd() => clearField(2);
  @$pb.TagNumber(2)
  $2.Timestamp ensureEnd() => $_ensure(1);
}

class TabularDataByFilterRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TabularDataByFilterRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.data.v1'), createEmptyInstance: create)
    ..aOM<DataRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataRequest', subBuilder: DataRequest.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countOnly')
    ..hasRequiredFields = false
  ;

  TabularDataByFilterRequest._() : super();
  factory TabularDataByFilterRequest({
    DataRequest? dataRequest,
    $core.bool? countOnly,
  }) {
    final _result = create();
    if (dataRequest != null) {
      _result.dataRequest = dataRequest;
    }
    if (countOnly != null) {
      _result.countOnly = countOnly;
    }
    return _result;
  }
  factory TabularDataByFilterRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TabularDataByFilterRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TabularDataByFilterRequest clone() => TabularDataByFilterRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TabularDataByFilterRequest copyWith(void Function(TabularDataByFilterRequest) updates) => super.copyWith((message) => updates(message as TabularDataByFilterRequest)) as TabularDataByFilterRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TabularDataByFilterRequest create() => TabularDataByFilterRequest._();
  TabularDataByFilterRequest createEmptyInstance() => create();
  static $pb.PbList<TabularDataByFilterRequest> createRepeated() => $pb.PbList<TabularDataByFilterRequest>();
  @$core.pragma('dart2js:noInline')
  static TabularDataByFilterRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TabularDataByFilterRequest>(create);
  static TabularDataByFilterRequest? _defaultInstance;

  @$pb.TagNumber(1)
  DataRequest get dataRequest => $_getN(0);
  @$pb.TagNumber(1)
  set dataRequest(DataRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDataRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataRequest() => clearField(1);
  @$pb.TagNumber(1)
  DataRequest ensureDataRequest() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get countOnly => $_getBF(1);
  @$pb.TagNumber(2)
  set countOnly($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCountOnly() => $_has(1);
  @$pb.TagNumber(2)
  void clearCountOnly() => clearField(2);
}

class TabularDataByFilterResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TabularDataByFilterResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.data.v1'), createEmptyInstance: create)
    ..pc<CaptureMetadata>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metadata', $pb.PbFieldType.PM, subBuilder: CaptureMetadata.create)
    ..pc<TabularData>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.PM, subBuilder: TabularData.create)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count')
    ..hasRequiredFields = false
  ;

  TabularDataByFilterResponse._() : super();
  factory TabularDataByFilterResponse({
    $core.Iterable<CaptureMetadata>? metadata,
    $core.Iterable<TabularData>? data,
    $fixnum.Int64? count,
  }) {
    final _result = create();
    if (metadata != null) {
      _result.metadata.addAll(metadata);
    }
    if (data != null) {
      _result.data.addAll(data);
    }
    if (count != null) {
      _result.count = count;
    }
    return _result;
  }
  factory TabularDataByFilterResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TabularDataByFilterResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TabularDataByFilterResponse clone() => TabularDataByFilterResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TabularDataByFilterResponse copyWith(void Function(TabularDataByFilterResponse) updates) => super.copyWith((message) => updates(message as TabularDataByFilterResponse)) as TabularDataByFilterResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TabularDataByFilterResponse create() => TabularDataByFilterResponse._();
  TabularDataByFilterResponse createEmptyInstance() => create();
  static $pb.PbList<TabularDataByFilterResponse> createRepeated() => $pb.PbList<TabularDataByFilterResponse>();
  @$core.pragma('dart2js:noInline')
  static TabularDataByFilterResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TabularDataByFilterResponse>(create);
  static TabularDataByFilterResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CaptureMetadata> get metadata => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<TabularData> get data => $_getList(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get count => $_getI64(2);
  @$pb.TagNumber(3)
  set count($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearCount() => clearField(3);
}

class TabularData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TabularData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.data.v1'), createEmptyInstance: create)
    ..aOM<$3.Struct>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', subBuilder: $3.Struct.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metadataIndex', $pb.PbFieldType.O3)
    ..aOM<$2.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeRequested', subBuilder: $2.Timestamp.create)
    ..aOM<$2.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeReceived', subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false
  ;

  TabularData._() : super();
  factory TabularData({
    $3.Struct? data,
    $core.int? metadataIndex,
    $2.Timestamp? timeRequested,
    $2.Timestamp? timeReceived,
  }) {
    final _result = create();
    if (data != null) {
      _result.data = data;
    }
    if (metadataIndex != null) {
      _result.metadataIndex = metadataIndex;
    }
    if (timeRequested != null) {
      _result.timeRequested = timeRequested;
    }
    if (timeReceived != null) {
      _result.timeReceived = timeReceived;
    }
    return _result;
  }
  factory TabularData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TabularData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TabularData clone() => TabularData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TabularData copyWith(void Function(TabularData) updates) => super.copyWith((message) => updates(message as TabularData)) as TabularData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TabularData create() => TabularData._();
  TabularData createEmptyInstance() => create();
  static $pb.PbList<TabularData> createRepeated() => $pb.PbList<TabularData>();
  @$core.pragma('dart2js:noInline')
  static TabularData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TabularData>(create);
  static TabularData? _defaultInstance;

  @$pb.TagNumber(1)
  $3.Struct get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($3.Struct v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
  @$pb.TagNumber(1)
  $3.Struct ensureData() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get metadataIndex => $_getIZ(1);
  @$pb.TagNumber(2)
  set metadataIndex($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMetadataIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearMetadataIndex() => clearField(2);

  @$pb.TagNumber(3)
  $2.Timestamp get timeRequested => $_getN(2);
  @$pb.TagNumber(3)
  set timeRequested($2.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimeRequested() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimeRequested() => clearField(3);
  @$pb.TagNumber(3)
  $2.Timestamp ensureTimeRequested() => $_ensure(2);

  @$pb.TagNumber(4)
  $2.Timestamp get timeReceived => $_getN(3);
  @$pb.TagNumber(4)
  set timeReceived($2.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTimeReceived() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimeReceived() => clearField(4);
  @$pb.TagNumber(4)
  $2.Timestamp ensureTimeReceived() => $_ensure(3);
}

class BinaryData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BinaryData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.data.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uri')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'binary', $pb.PbFieldType.OY)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metadataIndex', $pb.PbFieldType.O3)
    ..aOM<$2.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeRequested', subBuilder: $2.Timestamp.create)
    ..aOM<$2.Timestamp>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeReceived', subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false
  ;

  BinaryData._() : super();
  factory BinaryData({
    $core.String? id,
    $core.String? uri,
    $core.List<$core.int>? binary,
    $core.int? metadataIndex,
    $2.Timestamp? timeRequested,
    $2.Timestamp? timeReceived,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (uri != null) {
      _result.uri = uri;
    }
    if (binary != null) {
      _result.binary = binary;
    }
    if (metadataIndex != null) {
      _result.metadataIndex = metadataIndex;
    }
    if (timeRequested != null) {
      _result.timeRequested = timeRequested;
    }
    if (timeReceived != null) {
      _result.timeReceived = timeReceived;
    }
    return _result;
  }
  factory BinaryData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BinaryData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BinaryData clone() => BinaryData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BinaryData copyWith(void Function(BinaryData) updates) => super.copyWith((message) => updates(message as BinaryData)) as BinaryData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BinaryData create() => BinaryData._();
  BinaryData createEmptyInstance() => create();
  static $pb.PbList<BinaryData> createRepeated() => $pb.PbList<BinaryData>();
  @$core.pragma('dart2js:noInline')
  static BinaryData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BinaryData>(create);
  static BinaryData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get uri => $_getSZ(1);
  @$pb.TagNumber(2)
  set uri($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUri() => $_has(1);
  @$pb.TagNumber(2)
  void clearUri() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get binary => $_getN(2);
  @$pb.TagNumber(3)
  set binary($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBinary() => $_has(2);
  @$pb.TagNumber(3)
  void clearBinary() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get metadataIndex => $_getIZ(3);
  @$pb.TagNumber(4)
  set metadataIndex($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMetadataIndex() => $_has(3);
  @$pb.TagNumber(4)
  void clearMetadataIndex() => clearField(4);

  @$pb.TagNumber(5)
  $2.Timestamp get timeRequested => $_getN(4);
  @$pb.TagNumber(5)
  set timeRequested($2.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasTimeRequested() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimeRequested() => clearField(5);
  @$pb.TagNumber(5)
  $2.Timestamp ensureTimeRequested() => $_ensure(4);

  @$pb.TagNumber(6)
  $2.Timestamp get timeReceived => $_getN(5);
  @$pb.TagNumber(6)
  set timeReceived($2.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasTimeReceived() => $_has(5);
  @$pb.TagNumber(6)
  void clearTimeReceived() => clearField(6);
  @$pb.TagNumber(6)
  $2.Timestamp ensureTimeReceived() => $_ensure(5);
}

class BinaryDataByFilterRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BinaryDataByFilterRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.data.v1'), createEmptyInstance: create)
    ..aOM<DataRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataRequest', subBuilder: DataRequest.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'includeBinary')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countOnly')
    ..hasRequiredFields = false
  ;

  BinaryDataByFilterRequest._() : super();
  factory BinaryDataByFilterRequest({
    DataRequest? dataRequest,
    $core.bool? includeBinary,
    $core.bool? countOnly,
  }) {
    final _result = create();
    if (dataRequest != null) {
      _result.dataRequest = dataRequest;
    }
    if (includeBinary != null) {
      _result.includeBinary = includeBinary;
    }
    if (countOnly != null) {
      _result.countOnly = countOnly;
    }
    return _result;
  }
  factory BinaryDataByFilterRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BinaryDataByFilterRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BinaryDataByFilterRequest clone() => BinaryDataByFilterRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BinaryDataByFilterRequest copyWith(void Function(BinaryDataByFilterRequest) updates) => super.copyWith((message) => updates(message as BinaryDataByFilterRequest)) as BinaryDataByFilterRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BinaryDataByFilterRequest create() => BinaryDataByFilterRequest._();
  BinaryDataByFilterRequest createEmptyInstance() => create();
  static $pb.PbList<BinaryDataByFilterRequest> createRepeated() => $pb.PbList<BinaryDataByFilterRequest>();
  @$core.pragma('dart2js:noInline')
  static BinaryDataByFilterRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BinaryDataByFilterRequest>(create);
  static BinaryDataByFilterRequest? _defaultInstance;

  @$pb.TagNumber(1)
  DataRequest get dataRequest => $_getN(0);
  @$pb.TagNumber(1)
  set dataRequest(DataRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDataRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataRequest() => clearField(1);
  @$pb.TagNumber(1)
  DataRequest ensureDataRequest() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get includeBinary => $_getBF(1);
  @$pb.TagNumber(2)
  set includeBinary($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIncludeBinary() => $_has(1);
  @$pb.TagNumber(2)
  void clearIncludeBinary() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get countOnly => $_getBF(2);
  @$pb.TagNumber(3)
  set countOnly($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCountOnly() => $_has(2);
  @$pb.TagNumber(3)
  void clearCountOnly() => clearField(3);
}

class BinaryDataByFilterResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BinaryDataByFilterResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.data.v1'), createEmptyInstance: create)
    ..pc<CaptureMetadata>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metadata', $pb.PbFieldType.PM, subBuilder: CaptureMetadata.create)
    ..pc<BinaryData>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.PM, subBuilder: BinaryData.create)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count')
    ..hasRequiredFields = false
  ;

  BinaryDataByFilterResponse._() : super();
  factory BinaryDataByFilterResponse({
    $core.Iterable<CaptureMetadata>? metadata,
    $core.Iterable<BinaryData>? data,
    $fixnum.Int64? count,
  }) {
    final _result = create();
    if (metadata != null) {
      _result.metadata.addAll(metadata);
    }
    if (data != null) {
      _result.data.addAll(data);
    }
    if (count != null) {
      _result.count = count;
    }
    return _result;
  }
  factory BinaryDataByFilterResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BinaryDataByFilterResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BinaryDataByFilterResponse clone() => BinaryDataByFilterResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BinaryDataByFilterResponse copyWith(void Function(BinaryDataByFilterResponse) updates) => super.copyWith((message) => updates(message as BinaryDataByFilterResponse)) as BinaryDataByFilterResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BinaryDataByFilterResponse create() => BinaryDataByFilterResponse._();
  BinaryDataByFilterResponse createEmptyInstance() => create();
  static $pb.PbList<BinaryDataByFilterResponse> createRepeated() => $pb.PbList<BinaryDataByFilterResponse>();
  @$core.pragma('dart2js:noInline')
  static BinaryDataByFilterResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BinaryDataByFilterResponse>(create);
  static BinaryDataByFilterResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CaptureMetadata> get metadata => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<BinaryData> get data => $_getList(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get count => $_getI64(2);
  @$pb.TagNumber(3)
  set count($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearCount() => clearField(3);
}

class BinaryDataByIDsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BinaryDataByIDsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.data.v1'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileIds')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'includeBinary')
    ..hasRequiredFields = false
  ;

  BinaryDataByIDsRequest._() : super();
  factory BinaryDataByIDsRequest({
    $core.Iterable<$core.String>? fileIds,
    $core.bool? includeBinary,
  }) {
    final _result = create();
    if (fileIds != null) {
      _result.fileIds.addAll(fileIds);
    }
    if (includeBinary != null) {
      _result.includeBinary = includeBinary;
    }
    return _result;
  }
  factory BinaryDataByIDsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BinaryDataByIDsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BinaryDataByIDsRequest clone() => BinaryDataByIDsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BinaryDataByIDsRequest copyWith(void Function(BinaryDataByIDsRequest) updates) => super.copyWith((message) => updates(message as BinaryDataByIDsRequest)) as BinaryDataByIDsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BinaryDataByIDsRequest create() => BinaryDataByIDsRequest._();
  BinaryDataByIDsRequest createEmptyInstance() => create();
  static $pb.PbList<BinaryDataByIDsRequest> createRepeated() => $pb.PbList<BinaryDataByIDsRequest>();
  @$core.pragma('dart2js:noInline')
  static BinaryDataByIDsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BinaryDataByIDsRequest>(create);
  static BinaryDataByIDsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get fileIds => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get includeBinary => $_getBF(1);
  @$pb.TagNumber(2)
  set includeBinary($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIncludeBinary() => $_has(1);
  @$pb.TagNumber(2)
  void clearIncludeBinary() => clearField(2);
}

class BinaryDataByIDsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BinaryDataByIDsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.data.v1'), createEmptyInstance: create)
    ..pc<CaptureMetadata>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metadata', $pb.PbFieldType.PM, subBuilder: CaptureMetadata.create)
    ..pc<BinaryData>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.PM, subBuilder: BinaryData.create)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count')
    ..hasRequiredFields = false
  ;

  BinaryDataByIDsResponse._() : super();
  factory BinaryDataByIDsResponse({
    $core.Iterable<CaptureMetadata>? metadata,
    $core.Iterable<BinaryData>? data,
    $fixnum.Int64? count,
  }) {
    final _result = create();
    if (metadata != null) {
      _result.metadata.addAll(metadata);
    }
    if (data != null) {
      _result.data.addAll(data);
    }
    if (count != null) {
      _result.count = count;
    }
    return _result;
  }
  factory BinaryDataByIDsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BinaryDataByIDsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BinaryDataByIDsResponse clone() => BinaryDataByIDsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BinaryDataByIDsResponse copyWith(void Function(BinaryDataByIDsResponse) updates) => super.copyWith((message) => updates(message as BinaryDataByIDsResponse)) as BinaryDataByIDsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BinaryDataByIDsResponse create() => BinaryDataByIDsResponse._();
  BinaryDataByIDsResponse createEmptyInstance() => create();
  static $pb.PbList<BinaryDataByIDsResponse> createRepeated() => $pb.PbList<BinaryDataByIDsResponse>();
  @$core.pragma('dart2js:noInline')
  static BinaryDataByIDsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BinaryDataByIDsResponse>(create);
  static BinaryDataByIDsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CaptureMetadata> get metadata => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<BinaryData> get data => $_getList(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get count => $_getI64(2);
  @$pb.TagNumber(3)
  set count($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearCount() => clearField(3);
}

