///
//  Generated code. Do not modify.
//  source: app/v1/app.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $2;
import '../../google/protobuf/struct.pb.dart' as $3;

class Robot extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Robot', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location')
    ..aOM<$2.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastAccess', subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Robot._() : super();
  factory Robot({
    $core.String? id,
    $core.String? name,
    $core.String? location,
    $2.Timestamp? lastAccess,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (location != null) {
      _result.location = location;
    }
    if (lastAccess != null) {
      _result.lastAccess = lastAccess;
    }
    return _result;
  }
  factory Robot.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Robot.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Robot clone() => Robot()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Robot copyWith(void Function(Robot) updates) => super.copyWith((message) => updates(message as Robot)) as Robot; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Robot create() => Robot._();
  Robot createEmptyInstance() => create();
  static $pb.PbList<Robot> createRepeated() => $pb.PbList<Robot>();
  @$core.pragma('dart2js:noInline')
  static Robot getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Robot>(create);
  static Robot? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get location => $_getSZ(2);
  @$pb.TagNumber(3)
  set location($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLocation() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocation() => clearField(3);

  @$pb.TagNumber(4)
  $2.Timestamp get lastAccess => $_getN(3);
  @$pb.TagNumber(4)
  set lastAccess($2.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasLastAccess() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastAccess() => clearField(4);
  @$pb.TagNumber(4)
  $2.Timestamp ensureLastAccess() => $_ensure(3);
}

class RobotPart extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RobotPart', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secret')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'robot')
    ..aOM<$3.Struct>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'robotConfig', subBuilder: $3.Struct.create)
    ..aOM<$2.Timestamp>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastAccess', subBuilder: $2.Timestamp.create)
    ..aOM<$3.Struct>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userSuppliedInfo', subBuilder: $3.Struct.create)
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mainPart')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fqdn')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dnsName')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'localFqdn')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationId')
    ..hasRequiredFields = false
  ;

  RobotPart._() : super();
  factory RobotPart({
    $core.String? id,
    $core.String? name,
    $core.String? secret,
    $core.String? robot,
    $3.Struct? robotConfig,
    $2.Timestamp? lastAccess,
    $3.Struct? userSuppliedInfo,
    $core.bool? mainPart,
    $core.String? fqdn,
    $core.String? dnsName,
    $core.String? localFqdn,
    $core.String? locationId,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (secret != null) {
      _result.secret = secret;
    }
    if (robot != null) {
      _result.robot = robot;
    }
    if (robotConfig != null) {
      _result.robotConfig = robotConfig;
    }
    if (lastAccess != null) {
      _result.lastAccess = lastAccess;
    }
    if (userSuppliedInfo != null) {
      _result.userSuppliedInfo = userSuppliedInfo;
    }
    if (mainPart != null) {
      _result.mainPart = mainPart;
    }
    if (fqdn != null) {
      _result.fqdn = fqdn;
    }
    if (dnsName != null) {
      _result.dnsName = dnsName;
    }
    if (localFqdn != null) {
      _result.localFqdn = localFqdn;
    }
    if (locationId != null) {
      _result.locationId = locationId;
    }
    return _result;
  }
  factory RobotPart.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RobotPart.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RobotPart clone() => RobotPart()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RobotPart copyWith(void Function(RobotPart) updates) => super.copyWith((message) => updates(message as RobotPart)) as RobotPart; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RobotPart create() => RobotPart._();
  RobotPart createEmptyInstance() => create();
  static $pb.PbList<RobotPart> createRepeated() => $pb.PbList<RobotPart>();
  @$core.pragma('dart2js:noInline')
  static RobotPart getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RobotPart>(create);
  static RobotPart? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get secret => $_getSZ(2);
  @$pb.TagNumber(3)
  set secret($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSecret() => $_has(2);
  @$pb.TagNumber(3)
  void clearSecret() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get robot => $_getSZ(3);
  @$pb.TagNumber(4)
  set robot($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRobot() => $_has(3);
  @$pb.TagNumber(4)
  void clearRobot() => clearField(4);

  @$pb.TagNumber(5)
  $3.Struct get robotConfig => $_getN(4);
  @$pb.TagNumber(5)
  set robotConfig($3.Struct v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasRobotConfig() => $_has(4);
  @$pb.TagNumber(5)
  void clearRobotConfig() => clearField(5);
  @$pb.TagNumber(5)
  $3.Struct ensureRobotConfig() => $_ensure(4);

  @$pb.TagNumber(6)
  $2.Timestamp get lastAccess => $_getN(5);
  @$pb.TagNumber(6)
  set lastAccess($2.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasLastAccess() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastAccess() => clearField(6);
  @$pb.TagNumber(6)
  $2.Timestamp ensureLastAccess() => $_ensure(5);

  @$pb.TagNumber(7)
  $3.Struct get userSuppliedInfo => $_getN(6);
  @$pb.TagNumber(7)
  set userSuppliedInfo($3.Struct v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasUserSuppliedInfo() => $_has(6);
  @$pb.TagNumber(7)
  void clearUserSuppliedInfo() => clearField(7);
  @$pb.TagNumber(7)
  $3.Struct ensureUserSuppliedInfo() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.bool get mainPart => $_getBF(7);
  @$pb.TagNumber(8)
  set mainPart($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasMainPart() => $_has(7);
  @$pb.TagNumber(8)
  void clearMainPart() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get fqdn => $_getSZ(8);
  @$pb.TagNumber(9)
  set fqdn($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasFqdn() => $_has(8);
  @$pb.TagNumber(9)
  void clearFqdn() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get dnsName => $_getSZ(9);
  @$pb.TagNumber(10)
  set dnsName($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasDnsName() => $_has(9);
  @$pb.TagNumber(10)
  void clearDnsName() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get localFqdn => $_getSZ(10);
  @$pb.TagNumber(11)
  set localFqdn($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasLocalFqdn() => $_has(10);
  @$pb.TagNumber(11)
  void clearLocalFqdn() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get locationId => $_getSZ(11);
  @$pb.TagNumber(12)
  set locationId($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasLocationId() => $_has(11);
  @$pb.TagNumber(12)
  void clearLocationId() => clearField(12);
}

class RobotPartHistoryEntry extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RobotPartHistoryEntry', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'part')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'robot')
    ..aOM<$2.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'when', subBuilder: $2.Timestamp.create)
    ..aOM<RobotPart>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'old', subBuilder: RobotPart.create)
    ..hasRequiredFields = false
  ;

  RobotPartHistoryEntry._() : super();
  factory RobotPartHistoryEntry({
    $core.String? part,
    $core.String? robot,
    $2.Timestamp? when,
    RobotPart? old,
  }) {
    final _result = create();
    if (part != null) {
      _result.part = part;
    }
    if (robot != null) {
      _result.robot = robot;
    }
    if (when != null) {
      _result.when = when;
    }
    if (old != null) {
      _result.old = old;
    }
    return _result;
  }
  factory RobotPartHistoryEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RobotPartHistoryEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RobotPartHistoryEntry clone() => RobotPartHistoryEntry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RobotPartHistoryEntry copyWith(void Function(RobotPartHistoryEntry) updates) => super.copyWith((message) => updates(message as RobotPartHistoryEntry)) as RobotPartHistoryEntry; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RobotPartHistoryEntry create() => RobotPartHistoryEntry._();
  RobotPartHistoryEntry createEmptyInstance() => create();
  static $pb.PbList<RobotPartHistoryEntry> createRepeated() => $pb.PbList<RobotPartHistoryEntry>();
  @$core.pragma('dart2js:noInline')
  static RobotPartHistoryEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RobotPartHistoryEntry>(create);
  static RobotPartHistoryEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get part => $_getSZ(0);
  @$pb.TagNumber(1)
  set part($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPart() => $_has(0);
  @$pb.TagNumber(1)
  void clearPart() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get robot => $_getSZ(1);
  @$pb.TagNumber(2)
  set robot($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRobot() => $_has(1);
  @$pb.TagNumber(2)
  void clearRobot() => clearField(2);

  @$pb.TagNumber(3)
  $2.Timestamp get when => $_getN(2);
  @$pb.TagNumber(3)
  set when($2.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasWhen() => $_has(2);
  @$pb.TagNumber(3)
  void clearWhen() => clearField(3);
  @$pb.TagNumber(3)
  $2.Timestamp ensureWhen() => $_ensure(2);

  @$pb.TagNumber(4)
  RobotPart get old => $_getN(3);
  @$pb.TagNumber(4)
  set old(RobotPart v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasOld() => $_has(3);
  @$pb.TagNumber(4)
  void clearOld() => clearField(4);
  @$pb.TagNumber(4)
  RobotPart ensureOld() => $_ensure(3);
}

class ListOrganizationsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListOrganizationsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListOrganizationsRequest._() : super();
  factory ListOrganizationsRequest() => create();
  factory ListOrganizationsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListOrganizationsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListOrganizationsRequest clone() => ListOrganizationsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListOrganizationsRequest copyWith(void Function(ListOrganizationsRequest) updates) => super.copyWith((message) => updates(message as ListOrganizationsRequest)) as ListOrganizationsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListOrganizationsRequest create() => ListOrganizationsRequest._();
  ListOrganizationsRequest createEmptyInstance() => create();
  static $pb.PbList<ListOrganizationsRequest> createRepeated() => $pb.PbList<ListOrganizationsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListOrganizationsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListOrganizationsRequest>(create);
  static ListOrganizationsRequest? _defaultInstance;
}

class Organization extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Organization', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  Organization._() : super();
  factory Organization({
    $core.String? id,
    $core.String? name,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory Organization.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Organization.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Organization clone() => Organization()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Organization copyWith(void Function(Organization) updates) => super.copyWith((message) => updates(message as Organization)) as Organization; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Organization create() => Organization._();
  Organization createEmptyInstance() => create();
  static $pb.PbList<Organization> createRepeated() => $pb.PbList<Organization>();
  @$core.pragma('dart2js:noInline')
  static Organization getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Organization>(create);
  static Organization? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class ListOrganizationsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListOrganizationsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..pc<Organization>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organizations', $pb.PbFieldType.PM, subBuilder: Organization.create)
    ..hasRequiredFields = false
  ;

  ListOrganizationsResponse._() : super();
  factory ListOrganizationsResponse({
    $core.Iterable<Organization>? organizations,
  }) {
    final _result = create();
    if (organizations != null) {
      _result.organizations.addAll(organizations);
    }
    return _result;
  }
  factory ListOrganizationsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListOrganizationsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListOrganizationsResponse clone() => ListOrganizationsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListOrganizationsResponse copyWith(void Function(ListOrganizationsResponse) updates) => super.copyWith((message) => updates(message as ListOrganizationsResponse)) as ListOrganizationsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListOrganizationsResponse create() => ListOrganizationsResponse._();
  ListOrganizationsResponse createEmptyInstance() => create();
  static $pb.PbList<ListOrganizationsResponse> createRepeated() => $pb.PbList<ListOrganizationsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListOrganizationsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListOrganizationsResponse>(create);
  static ListOrganizationsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Organization> get organizations => $_getList(0);
}

class Location extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Location', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  Location._() : super();
  factory Location({
    $core.String? id,
    $core.String? name,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory Location.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Location.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Location clone() => Location()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Location copyWith(void Function(Location) updates) => super.copyWith((message) => updates(message as Location)) as Location; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Location create() => Location._();
  Location createEmptyInstance() => create();
  static $pb.PbList<Location> createRepeated() => $pb.PbList<Location>();
  @$core.pragma('dart2js:noInline')
  static Location getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Location>(create);
  static Location? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

class ListLocationsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListLocationsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organizationId')
    ..hasRequiredFields = false
  ;

  ListLocationsRequest._() : super();
  factory ListLocationsRequest({
    $core.String? organizationId,
  }) {
    final _result = create();
    if (organizationId != null) {
      _result.organizationId = organizationId;
    }
    return _result;
  }
  factory ListLocationsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListLocationsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListLocationsRequest clone() => ListLocationsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListLocationsRequest copyWith(void Function(ListLocationsRequest) updates) => super.copyWith((message) => updates(message as ListLocationsRequest)) as ListLocationsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListLocationsRequest create() => ListLocationsRequest._();
  ListLocationsRequest createEmptyInstance() => create();
  static $pb.PbList<ListLocationsRequest> createRepeated() => $pb.PbList<ListLocationsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListLocationsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListLocationsRequest>(create);
  static ListLocationsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get organizationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set organizationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrganizationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrganizationId() => clearField(1);
}

class ListLocationsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListLocationsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..pc<Location>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locations', $pb.PbFieldType.PM, subBuilder: Location.create)
    ..hasRequiredFields = false
  ;

  ListLocationsResponse._() : super();
  factory ListLocationsResponse({
    $core.Iterable<Location>? locations,
  }) {
    final _result = create();
    if (locations != null) {
      _result.locations.addAll(locations);
    }
    return _result;
  }
  factory ListLocationsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListLocationsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListLocationsResponse clone() => ListLocationsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListLocationsResponse copyWith(void Function(ListLocationsResponse) updates) => super.copyWith((message) => updates(message as ListLocationsResponse)) as ListLocationsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListLocationsResponse create() => ListLocationsResponse._();
  ListLocationsResponse createEmptyInstance() => create();
  static $pb.PbList<ListLocationsResponse> createRepeated() => $pb.PbList<ListLocationsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListLocationsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListLocationsResponse>(create);
  static ListLocationsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Location> get locations => $_getList(0);
}

class LocationAuth extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LocationAuth', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'secret')
    ..hasRequiredFields = false
  ;

  LocationAuth._() : super();
  factory LocationAuth({
    $core.String? secret,
  }) {
    final _result = create();
    if (secret != null) {
      _result.secret = secret;
    }
    return _result;
  }
  factory LocationAuth.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocationAuth.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocationAuth clone() => LocationAuth()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocationAuth copyWith(void Function(LocationAuth) updates) => super.copyWith((message) => updates(message as LocationAuth)) as LocationAuth; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LocationAuth create() => LocationAuth._();
  LocationAuth createEmptyInstance() => create();
  static $pb.PbList<LocationAuth> createRepeated() => $pb.PbList<LocationAuth>();
  @$core.pragma('dart2js:noInline')
  static LocationAuth getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocationAuth>(create);
  static LocationAuth? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get secret => $_getSZ(0);
  @$pb.TagNumber(1)
  set secret($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSecret() => $_has(0);
  @$pb.TagNumber(1)
  void clearSecret() => clearField(1);
}

class LocationAuthRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LocationAuthRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationId')
    ..hasRequiredFields = false
  ;

  LocationAuthRequest._() : super();
  factory LocationAuthRequest({
    $core.String? locationId,
  }) {
    final _result = create();
    if (locationId != null) {
      _result.locationId = locationId;
    }
    return _result;
  }
  factory LocationAuthRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocationAuthRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocationAuthRequest clone() => LocationAuthRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocationAuthRequest copyWith(void Function(LocationAuthRequest) updates) => super.copyWith((message) => updates(message as LocationAuthRequest)) as LocationAuthRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LocationAuthRequest create() => LocationAuthRequest._();
  LocationAuthRequest createEmptyInstance() => create();
  static $pb.PbList<LocationAuthRequest> createRepeated() => $pb.PbList<LocationAuthRequest>();
  @$core.pragma('dart2js:noInline')
  static LocationAuthRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocationAuthRequest>(create);
  static LocationAuthRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get locationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set locationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocationId() => clearField(1);
}

class LocationAuthResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LocationAuthResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOM<LocationAuth>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'auth', subBuilder: LocationAuth.create)
    ..hasRequiredFields = false
  ;

  LocationAuthResponse._() : super();
  factory LocationAuthResponse({
    LocationAuth? auth,
  }) {
    final _result = create();
    if (auth != null) {
      _result.auth = auth;
    }
    return _result;
  }
  factory LocationAuthResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocationAuthResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocationAuthResponse clone() => LocationAuthResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocationAuthResponse copyWith(void Function(LocationAuthResponse) updates) => super.copyWith((message) => updates(message as LocationAuthResponse)) as LocationAuthResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LocationAuthResponse create() => LocationAuthResponse._();
  LocationAuthResponse createEmptyInstance() => create();
  static $pb.PbList<LocationAuthResponse> createRepeated() => $pb.PbList<LocationAuthResponse>();
  @$core.pragma('dart2js:noInline')
  static LocationAuthResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocationAuthResponse>(create);
  static LocationAuthResponse? _defaultInstance;

  @$pb.TagNumber(1)
  LocationAuth get auth => $_getN(0);
  @$pb.TagNumber(1)
  set auth(LocationAuth v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuth() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuth() => clearField(1);
  @$pb.TagNumber(1)
  LocationAuth ensureAuth() => $_ensure(0);
}

class GetRobotRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRobotRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetRobotRequest._() : super();
  factory GetRobotRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetRobotRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRobotRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRobotRequest clone() => GetRobotRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRobotRequest copyWith(void Function(GetRobotRequest) updates) => super.copyWith((message) => updates(message as GetRobotRequest)) as GetRobotRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRobotRequest create() => GetRobotRequest._();
  GetRobotRequest createEmptyInstance() => create();
  static $pb.PbList<GetRobotRequest> createRepeated() => $pb.PbList<GetRobotRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRobotRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRobotRequest>(create);
  static GetRobotRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetRobotResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRobotResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOM<Robot>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'robot', subBuilder: Robot.create)
    ..hasRequiredFields = false
  ;

  GetRobotResponse._() : super();
  factory GetRobotResponse({
    Robot? robot,
  }) {
    final _result = create();
    if (robot != null) {
      _result.robot = robot;
    }
    return _result;
  }
  factory GetRobotResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRobotResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRobotResponse clone() => GetRobotResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRobotResponse copyWith(void Function(GetRobotResponse) updates) => super.copyWith((message) => updates(message as GetRobotResponse)) as GetRobotResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRobotResponse create() => GetRobotResponse._();
  GetRobotResponse createEmptyInstance() => create();
  static $pb.PbList<GetRobotResponse> createRepeated() => $pb.PbList<GetRobotResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRobotResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRobotResponse>(create);
  static GetRobotResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Robot get robot => $_getN(0);
  @$pb.TagNumber(1)
  set robot(Robot v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRobot() => $_has(0);
  @$pb.TagNumber(1)
  void clearRobot() => clearField(1);
  @$pb.TagNumber(1)
  Robot ensureRobot() => $_ensure(0);
}

class GetRobotPartsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRobotPartsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'robotId')
    ..hasRequiredFields = false
  ;

  GetRobotPartsRequest._() : super();
  factory GetRobotPartsRequest({
    $core.String? robotId,
  }) {
    final _result = create();
    if (robotId != null) {
      _result.robotId = robotId;
    }
    return _result;
  }
  factory GetRobotPartsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRobotPartsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRobotPartsRequest clone() => GetRobotPartsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRobotPartsRequest copyWith(void Function(GetRobotPartsRequest) updates) => super.copyWith((message) => updates(message as GetRobotPartsRequest)) as GetRobotPartsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRobotPartsRequest create() => GetRobotPartsRequest._();
  GetRobotPartsRequest createEmptyInstance() => create();
  static $pb.PbList<GetRobotPartsRequest> createRepeated() => $pb.PbList<GetRobotPartsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRobotPartsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRobotPartsRequest>(create);
  static GetRobotPartsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get robotId => $_getSZ(0);
  @$pb.TagNumber(1)
  set robotId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRobotId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRobotId() => clearField(1);
}

class GetRobotPartsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRobotPartsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..pc<RobotPart>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parts', $pb.PbFieldType.PM, subBuilder: RobotPart.create)
    ..hasRequiredFields = false
  ;

  GetRobotPartsResponse._() : super();
  factory GetRobotPartsResponse({
    $core.Iterable<RobotPart>? parts,
  }) {
    final _result = create();
    if (parts != null) {
      _result.parts.addAll(parts);
    }
    return _result;
  }
  factory GetRobotPartsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRobotPartsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRobotPartsResponse clone() => GetRobotPartsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRobotPartsResponse copyWith(void Function(GetRobotPartsResponse) updates) => super.copyWith((message) => updates(message as GetRobotPartsResponse)) as GetRobotPartsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRobotPartsResponse create() => GetRobotPartsResponse._();
  GetRobotPartsResponse createEmptyInstance() => create();
  static $pb.PbList<GetRobotPartsResponse> createRepeated() => $pb.PbList<GetRobotPartsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRobotPartsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRobotPartsResponse>(create);
  static GetRobotPartsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RobotPart> get parts => $_getList(0);
}

class GetRobotPartRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRobotPartRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetRobotPartRequest._() : super();
  factory GetRobotPartRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetRobotPartRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRobotPartRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRobotPartRequest clone() => GetRobotPartRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRobotPartRequest copyWith(void Function(GetRobotPartRequest) updates) => super.copyWith((message) => updates(message as GetRobotPartRequest)) as GetRobotPartRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRobotPartRequest create() => GetRobotPartRequest._();
  GetRobotPartRequest createEmptyInstance() => create();
  static $pb.PbList<GetRobotPartRequest> createRepeated() => $pb.PbList<GetRobotPartRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRobotPartRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRobotPartRequest>(create);
  static GetRobotPartRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetRobotPartResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRobotPartResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOM<RobotPart>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'part', subBuilder: RobotPart.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'configJson')
    ..hasRequiredFields = false
  ;

  GetRobotPartResponse._() : super();
  factory GetRobotPartResponse({
    RobotPart? part,
    $core.String? configJson,
  }) {
    final _result = create();
    if (part != null) {
      _result.part = part;
    }
    if (configJson != null) {
      _result.configJson = configJson;
    }
    return _result;
  }
  factory GetRobotPartResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRobotPartResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRobotPartResponse clone() => GetRobotPartResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRobotPartResponse copyWith(void Function(GetRobotPartResponse) updates) => super.copyWith((message) => updates(message as GetRobotPartResponse)) as GetRobotPartResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRobotPartResponse create() => GetRobotPartResponse._();
  GetRobotPartResponse createEmptyInstance() => create();
  static $pb.PbList<GetRobotPartResponse> createRepeated() => $pb.PbList<GetRobotPartResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRobotPartResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRobotPartResponse>(create);
  static GetRobotPartResponse? _defaultInstance;

  @$pb.TagNumber(1)
  RobotPart get part => $_getN(0);
  @$pb.TagNumber(1)
  set part(RobotPart v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPart() => $_has(0);
  @$pb.TagNumber(1)
  void clearPart() => clearField(1);
  @$pb.TagNumber(1)
  RobotPart ensurePart() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get configJson => $_getSZ(1);
  @$pb.TagNumber(2)
  set configJson($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConfigJson() => $_has(1);
  @$pb.TagNumber(2)
  void clearConfigJson() => clearField(2);
}

class GetRobotPartLogsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRobotPartLogsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errorsOnly')
    ..hasRequiredFields = false
  ;

  GetRobotPartLogsRequest._() : super();
  factory GetRobotPartLogsRequest({
    $core.String? id,
    $core.bool? errorsOnly,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (errorsOnly != null) {
      _result.errorsOnly = errorsOnly;
    }
    return _result;
  }
  factory GetRobotPartLogsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRobotPartLogsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRobotPartLogsRequest clone() => GetRobotPartLogsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRobotPartLogsRequest copyWith(void Function(GetRobotPartLogsRequest) updates) => super.copyWith((message) => updates(message as GetRobotPartLogsRequest)) as GetRobotPartLogsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRobotPartLogsRequest create() => GetRobotPartLogsRequest._();
  GetRobotPartLogsRequest createEmptyInstance() => create();
  static $pb.PbList<GetRobotPartLogsRequest> createRepeated() => $pb.PbList<GetRobotPartLogsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRobotPartLogsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRobotPartLogsRequest>(create);
  static GetRobotPartLogsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get errorsOnly => $_getBF(1);
  @$pb.TagNumber(2)
  set errorsOnly($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrorsOnly() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrorsOnly() => clearField(2);
}

class LogEntry extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LogEntry', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'host')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'level')
    ..aOM<$2.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'time', subBuilder: $2.Timestamp.create)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'loggerName')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..aOM<$3.Struct>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'caller', subBuilder: $3.Struct.create)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stack')
    ..pc<$3.Struct>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fields', $pb.PbFieldType.PM, subBuilder: $3.Struct.create)
    ..hasRequiredFields = false
  ;

  LogEntry._() : super();
  factory LogEntry({
    $core.String? host,
    $core.String? level,
    $2.Timestamp? time,
    $core.String? loggerName,
    $core.String? message,
    $3.Struct? caller,
    $core.String? stack,
    $core.Iterable<$3.Struct>? fields,
  }) {
    final _result = create();
    if (host != null) {
      _result.host = host;
    }
    if (level != null) {
      _result.level = level;
    }
    if (time != null) {
      _result.time = time;
    }
    if (loggerName != null) {
      _result.loggerName = loggerName;
    }
    if (message != null) {
      _result.message = message;
    }
    if (caller != null) {
      _result.caller = caller;
    }
    if (stack != null) {
      _result.stack = stack;
    }
    if (fields != null) {
      _result.fields.addAll(fields);
    }
    return _result;
  }
  factory LogEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LogEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LogEntry clone() => LogEntry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LogEntry copyWith(void Function(LogEntry) updates) => super.copyWith((message) => updates(message as LogEntry)) as LogEntry; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LogEntry create() => LogEntry._();
  LogEntry createEmptyInstance() => create();
  static $pb.PbList<LogEntry> createRepeated() => $pb.PbList<LogEntry>();
  @$core.pragma('dart2js:noInline')
  static LogEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LogEntry>(create);
  static LogEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get host => $_getSZ(0);
  @$pb.TagNumber(1)
  set host($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHost() => $_has(0);
  @$pb.TagNumber(1)
  void clearHost() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get level => $_getSZ(1);
  @$pb.TagNumber(2)
  set level($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLevel() => $_has(1);
  @$pb.TagNumber(2)
  void clearLevel() => clearField(2);

  @$pb.TagNumber(3)
  $2.Timestamp get time => $_getN(2);
  @$pb.TagNumber(3)
  set time($2.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearTime() => clearField(3);
  @$pb.TagNumber(3)
  $2.Timestamp ensureTime() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get loggerName => $_getSZ(3);
  @$pb.TagNumber(4)
  set loggerName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLoggerName() => $_has(3);
  @$pb.TagNumber(4)
  void clearLoggerName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get message => $_getSZ(4);
  @$pb.TagNumber(5)
  set message($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMessage() => $_has(4);
  @$pb.TagNumber(5)
  void clearMessage() => clearField(5);

  @$pb.TagNumber(6)
  $3.Struct get caller => $_getN(5);
  @$pb.TagNumber(6)
  set caller($3.Struct v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasCaller() => $_has(5);
  @$pb.TagNumber(6)
  void clearCaller() => clearField(6);
  @$pb.TagNumber(6)
  $3.Struct ensureCaller() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.String get stack => $_getSZ(6);
  @$pb.TagNumber(7)
  set stack($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasStack() => $_has(6);
  @$pb.TagNumber(7)
  void clearStack() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$3.Struct> get fields => $_getList(7);
}

class GetRobotPartLogsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRobotPartLogsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..pc<LogEntry>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'logs', $pb.PbFieldType.PM, subBuilder: LogEntry.create)
    ..hasRequiredFields = false
  ;

  GetRobotPartLogsResponse._() : super();
  factory GetRobotPartLogsResponse({
    $core.Iterable<LogEntry>? logs,
  }) {
    final _result = create();
    if (logs != null) {
      _result.logs.addAll(logs);
    }
    return _result;
  }
  factory GetRobotPartLogsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRobotPartLogsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRobotPartLogsResponse clone() => GetRobotPartLogsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRobotPartLogsResponse copyWith(void Function(GetRobotPartLogsResponse) updates) => super.copyWith((message) => updates(message as GetRobotPartLogsResponse)) as GetRobotPartLogsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRobotPartLogsResponse create() => GetRobotPartLogsResponse._();
  GetRobotPartLogsResponse createEmptyInstance() => create();
  static $pb.PbList<GetRobotPartLogsResponse> createRepeated() => $pb.PbList<GetRobotPartLogsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRobotPartLogsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRobotPartLogsResponse>(create);
  static GetRobotPartLogsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<LogEntry> get logs => $_getList(0);
}

class TailRobotPartLogsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TailRobotPartLogsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errorsOnly')
    ..hasRequiredFields = false
  ;

  TailRobotPartLogsRequest._() : super();
  factory TailRobotPartLogsRequest({
    $core.String? id,
    $core.bool? errorsOnly,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (errorsOnly != null) {
      _result.errorsOnly = errorsOnly;
    }
    return _result;
  }
  factory TailRobotPartLogsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TailRobotPartLogsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TailRobotPartLogsRequest clone() => TailRobotPartLogsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TailRobotPartLogsRequest copyWith(void Function(TailRobotPartLogsRequest) updates) => super.copyWith((message) => updates(message as TailRobotPartLogsRequest)) as TailRobotPartLogsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TailRobotPartLogsRequest create() => TailRobotPartLogsRequest._();
  TailRobotPartLogsRequest createEmptyInstance() => create();
  static $pb.PbList<TailRobotPartLogsRequest> createRepeated() => $pb.PbList<TailRobotPartLogsRequest>();
  @$core.pragma('dart2js:noInline')
  static TailRobotPartLogsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TailRobotPartLogsRequest>(create);
  static TailRobotPartLogsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get errorsOnly => $_getBF(1);
  @$pb.TagNumber(2)
  set errorsOnly($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasErrorsOnly() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrorsOnly() => clearField(2);
}

class TailRobotPartLogsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TailRobotPartLogsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..pc<LogEntry>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'logs', $pb.PbFieldType.PM, subBuilder: LogEntry.create)
    ..hasRequiredFields = false
  ;

  TailRobotPartLogsResponse._() : super();
  factory TailRobotPartLogsResponse({
    $core.Iterable<LogEntry>? logs,
  }) {
    final _result = create();
    if (logs != null) {
      _result.logs.addAll(logs);
    }
    return _result;
  }
  factory TailRobotPartLogsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TailRobotPartLogsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TailRobotPartLogsResponse clone() => TailRobotPartLogsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TailRobotPartLogsResponse copyWith(void Function(TailRobotPartLogsResponse) updates) => super.copyWith((message) => updates(message as TailRobotPartLogsResponse)) as TailRobotPartLogsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TailRobotPartLogsResponse create() => TailRobotPartLogsResponse._();
  TailRobotPartLogsResponse createEmptyInstance() => create();
  static $pb.PbList<TailRobotPartLogsResponse> createRepeated() => $pb.PbList<TailRobotPartLogsResponse>();
  @$core.pragma('dart2js:noInline')
  static TailRobotPartLogsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TailRobotPartLogsResponse>(create);
  static TailRobotPartLogsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<LogEntry> get logs => $_getList(0);
}

class GetRobotPartHistoryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRobotPartHistoryRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetRobotPartHistoryRequest._() : super();
  factory GetRobotPartHistoryRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetRobotPartHistoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRobotPartHistoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRobotPartHistoryRequest clone() => GetRobotPartHistoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRobotPartHistoryRequest copyWith(void Function(GetRobotPartHistoryRequest) updates) => super.copyWith((message) => updates(message as GetRobotPartHistoryRequest)) as GetRobotPartHistoryRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRobotPartHistoryRequest create() => GetRobotPartHistoryRequest._();
  GetRobotPartHistoryRequest createEmptyInstance() => create();
  static $pb.PbList<GetRobotPartHistoryRequest> createRepeated() => $pb.PbList<GetRobotPartHistoryRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRobotPartHistoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRobotPartHistoryRequest>(create);
  static GetRobotPartHistoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetRobotPartHistoryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRobotPartHistoryResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..pc<RobotPartHistoryEntry>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'history', $pb.PbFieldType.PM, subBuilder: RobotPartHistoryEntry.create)
    ..hasRequiredFields = false
  ;

  GetRobotPartHistoryResponse._() : super();
  factory GetRobotPartHistoryResponse({
    $core.Iterable<RobotPartHistoryEntry>? history,
  }) {
    final _result = create();
    if (history != null) {
      _result.history.addAll(history);
    }
    return _result;
  }
  factory GetRobotPartHistoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRobotPartHistoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRobotPartHistoryResponse clone() => GetRobotPartHistoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRobotPartHistoryResponse copyWith(void Function(GetRobotPartHistoryResponse) updates) => super.copyWith((message) => updates(message as GetRobotPartHistoryResponse)) as GetRobotPartHistoryResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRobotPartHistoryResponse create() => GetRobotPartHistoryResponse._();
  GetRobotPartHistoryResponse createEmptyInstance() => create();
  static $pb.PbList<GetRobotPartHistoryResponse> createRepeated() => $pb.PbList<GetRobotPartHistoryResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRobotPartHistoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRobotPartHistoryResponse>(create);
  static GetRobotPartHistoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RobotPartHistoryEntry> get history => $_getList(0);
}

class UpdateRobotPartRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateRobotPartRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOM<$3.Struct>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'robotConfig', subBuilder: $3.Struct.create)
    ..hasRequiredFields = false
  ;

  UpdateRobotPartRequest._() : super();
  factory UpdateRobotPartRequest({
    $core.String? id,
    $core.String? name,
    $3.Struct? robotConfig,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (robotConfig != null) {
      _result.robotConfig = robotConfig;
    }
    return _result;
  }
  factory UpdateRobotPartRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateRobotPartRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateRobotPartRequest clone() => UpdateRobotPartRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateRobotPartRequest copyWith(void Function(UpdateRobotPartRequest) updates) => super.copyWith((message) => updates(message as UpdateRobotPartRequest)) as UpdateRobotPartRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateRobotPartRequest create() => UpdateRobotPartRequest._();
  UpdateRobotPartRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateRobotPartRequest> createRepeated() => $pb.PbList<UpdateRobotPartRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateRobotPartRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateRobotPartRequest>(create);
  static UpdateRobotPartRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $3.Struct get robotConfig => $_getN(2);
  @$pb.TagNumber(3)
  set robotConfig($3.Struct v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRobotConfig() => $_has(2);
  @$pb.TagNumber(3)
  void clearRobotConfig() => clearField(3);
  @$pb.TagNumber(3)
  $3.Struct ensureRobotConfig() => $_ensure(2);
}

class UpdateRobotPartResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateRobotPartResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOM<RobotPart>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'part', subBuilder: RobotPart.create)
    ..hasRequiredFields = false
  ;

  UpdateRobotPartResponse._() : super();
  factory UpdateRobotPartResponse({
    RobotPart? part,
  }) {
    final _result = create();
    if (part != null) {
      _result.part = part;
    }
    return _result;
  }
  factory UpdateRobotPartResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateRobotPartResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateRobotPartResponse clone() => UpdateRobotPartResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateRobotPartResponse copyWith(void Function(UpdateRobotPartResponse) updates) => super.copyWith((message) => updates(message as UpdateRobotPartResponse)) as UpdateRobotPartResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateRobotPartResponse create() => UpdateRobotPartResponse._();
  UpdateRobotPartResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateRobotPartResponse> createRepeated() => $pb.PbList<UpdateRobotPartResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateRobotPartResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateRobotPartResponse>(create);
  static UpdateRobotPartResponse? _defaultInstance;

  @$pb.TagNumber(1)
  RobotPart get part => $_getN(0);
  @$pb.TagNumber(1)
  set part(RobotPart v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPart() => $_has(0);
  @$pb.TagNumber(1)
  void clearPart() => clearField(1);
  @$pb.TagNumber(1)
  RobotPart ensurePart() => $_ensure(0);
}

class NewRobotPartRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NewRobotPartRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'robotId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'partName')
    ..hasRequiredFields = false
  ;

  NewRobotPartRequest._() : super();
  factory NewRobotPartRequest({
    $core.String? robotId,
    $core.String? partName,
  }) {
    final _result = create();
    if (robotId != null) {
      _result.robotId = robotId;
    }
    if (partName != null) {
      _result.partName = partName;
    }
    return _result;
  }
  factory NewRobotPartRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewRobotPartRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewRobotPartRequest clone() => NewRobotPartRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewRobotPartRequest copyWith(void Function(NewRobotPartRequest) updates) => super.copyWith((message) => updates(message as NewRobotPartRequest)) as NewRobotPartRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewRobotPartRequest create() => NewRobotPartRequest._();
  NewRobotPartRequest createEmptyInstance() => create();
  static $pb.PbList<NewRobotPartRequest> createRepeated() => $pb.PbList<NewRobotPartRequest>();
  @$core.pragma('dart2js:noInline')
  static NewRobotPartRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewRobotPartRequest>(create);
  static NewRobotPartRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get robotId => $_getSZ(0);
  @$pb.TagNumber(1)
  set robotId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRobotId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRobotId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get partName => $_getSZ(1);
  @$pb.TagNumber(2)
  set partName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPartName() => $_has(1);
  @$pb.TagNumber(2)
  void clearPartName() => clearField(2);
}

class NewRobotPartResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NewRobotPartResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'partId')
    ..hasRequiredFields = false
  ;

  NewRobotPartResponse._() : super();
  factory NewRobotPartResponse({
    $core.String? partId,
  }) {
    final _result = create();
    if (partId != null) {
      _result.partId = partId;
    }
    return _result;
  }
  factory NewRobotPartResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewRobotPartResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewRobotPartResponse clone() => NewRobotPartResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewRobotPartResponse copyWith(void Function(NewRobotPartResponse) updates) => super.copyWith((message) => updates(message as NewRobotPartResponse)) as NewRobotPartResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewRobotPartResponse create() => NewRobotPartResponse._();
  NewRobotPartResponse createEmptyInstance() => create();
  static $pb.PbList<NewRobotPartResponse> createRepeated() => $pb.PbList<NewRobotPartResponse>();
  @$core.pragma('dart2js:noInline')
  static NewRobotPartResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewRobotPartResponse>(create);
  static NewRobotPartResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get partId => $_getSZ(0);
  @$pb.TagNumber(1)
  set partId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPartId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartId() => clearField(1);
}

class DeleteRobotPartRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteRobotPartRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'partId')
    ..hasRequiredFields = false
  ;

  DeleteRobotPartRequest._() : super();
  factory DeleteRobotPartRequest({
    $core.String? partId,
  }) {
    final _result = create();
    if (partId != null) {
      _result.partId = partId;
    }
    return _result;
  }
  factory DeleteRobotPartRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteRobotPartRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteRobotPartRequest clone() => DeleteRobotPartRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteRobotPartRequest copyWith(void Function(DeleteRobotPartRequest) updates) => super.copyWith((message) => updates(message as DeleteRobotPartRequest)) as DeleteRobotPartRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteRobotPartRequest create() => DeleteRobotPartRequest._();
  DeleteRobotPartRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteRobotPartRequest> createRepeated() => $pb.PbList<DeleteRobotPartRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteRobotPartRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteRobotPartRequest>(create);
  static DeleteRobotPartRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get partId => $_getSZ(0);
  @$pb.TagNumber(1)
  set partId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPartId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartId() => clearField(1);
}

class DeleteRobotPartResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteRobotPartResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteRobotPartResponse._() : super();
  factory DeleteRobotPartResponse() => create();
  factory DeleteRobotPartResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteRobotPartResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteRobotPartResponse clone() => DeleteRobotPartResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteRobotPartResponse copyWith(void Function(DeleteRobotPartResponse) updates) => super.copyWith((message) => updates(message as DeleteRobotPartResponse)) as DeleteRobotPartResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteRobotPartResponse create() => DeleteRobotPartResponse._();
  DeleteRobotPartResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteRobotPartResponse> createRepeated() => $pb.PbList<DeleteRobotPartResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteRobotPartResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteRobotPartResponse>(create);
  static DeleteRobotPartResponse? _defaultInstance;
}

class Fragment extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Fragment', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOM<$3.Struct>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fragment', subBuilder: $3.Struct.create)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organizationOwner')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'public')
    ..hasRequiredFields = false
  ;

  Fragment._() : super();
  factory Fragment({
    $core.String? id,
    $core.String? name,
    $3.Struct? fragment,
    $core.String? organizationOwner,
    $core.bool? public,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (fragment != null) {
      _result.fragment = fragment;
    }
    if (organizationOwner != null) {
      _result.organizationOwner = organizationOwner;
    }
    if (public != null) {
      _result.public = public;
    }
    return _result;
  }
  factory Fragment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Fragment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Fragment clone() => Fragment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Fragment copyWith(void Function(Fragment) updates) => super.copyWith((message) => updates(message as Fragment)) as Fragment; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Fragment create() => Fragment._();
  Fragment createEmptyInstance() => create();
  static $pb.PbList<Fragment> createRepeated() => $pb.PbList<Fragment>();
  @$core.pragma('dart2js:noInline')
  static Fragment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Fragment>(create);
  static Fragment? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $3.Struct get fragment => $_getN(2);
  @$pb.TagNumber(3)
  set fragment($3.Struct v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFragment() => $_has(2);
  @$pb.TagNumber(3)
  void clearFragment() => clearField(3);
  @$pb.TagNumber(3)
  $3.Struct ensureFragment() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get organizationOwner => $_getSZ(3);
  @$pb.TagNumber(4)
  set organizationOwner($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOrganizationOwner() => $_has(3);
  @$pb.TagNumber(4)
  void clearOrganizationOwner() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get public => $_getBF(4);
  @$pb.TagNumber(5)
  set public($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPublic() => $_has(4);
  @$pb.TagNumber(5)
  void clearPublic() => clearField(5);
}

class FindRobotsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FindRobotsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationId')
    ..hasRequiredFields = false
  ;

  FindRobotsRequest._() : super();
  factory FindRobotsRequest({
    $core.String? locationId,
  }) {
    final _result = create();
    if (locationId != null) {
      _result.locationId = locationId;
    }
    return _result;
  }
  factory FindRobotsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FindRobotsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FindRobotsRequest clone() => FindRobotsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FindRobotsRequest copyWith(void Function(FindRobotsRequest) updates) => super.copyWith((message) => updates(message as FindRobotsRequest)) as FindRobotsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FindRobotsRequest create() => FindRobotsRequest._();
  FindRobotsRequest createEmptyInstance() => create();
  static $pb.PbList<FindRobotsRequest> createRepeated() => $pb.PbList<FindRobotsRequest>();
  @$core.pragma('dart2js:noInline')
  static FindRobotsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FindRobotsRequest>(create);
  static FindRobotsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get locationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set locationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocationId() => clearField(1);
}

class FindRobotsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FindRobotsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..pc<Robot>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'robots', $pb.PbFieldType.PM, subBuilder: Robot.create)
    ..hasRequiredFields = false
  ;

  FindRobotsResponse._() : super();
  factory FindRobotsResponse({
    $core.Iterable<Robot>? robots,
  }) {
    final _result = create();
    if (robots != null) {
      _result.robots.addAll(robots);
    }
    return _result;
  }
  factory FindRobotsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FindRobotsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FindRobotsResponse clone() => FindRobotsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FindRobotsResponse copyWith(void Function(FindRobotsResponse) updates) => super.copyWith((message) => updates(message as FindRobotsResponse)) as FindRobotsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FindRobotsResponse create() => FindRobotsResponse._();
  FindRobotsResponse createEmptyInstance() => create();
  static $pb.PbList<FindRobotsResponse> createRepeated() => $pb.PbList<FindRobotsResponse>();
  @$core.pragma('dart2js:noInline')
  static FindRobotsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FindRobotsResponse>(create);
  static FindRobotsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Robot> get robots => $_getList(0);
}

class NewRobotRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NewRobotRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location')
    ..hasRequiredFields = false
  ;

  NewRobotRequest._() : super();
  factory NewRobotRequest({
    $core.String? name,
    $core.String? location,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (location != null) {
      _result.location = location;
    }
    return _result;
  }
  factory NewRobotRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewRobotRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewRobotRequest clone() => NewRobotRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewRobotRequest copyWith(void Function(NewRobotRequest) updates) => super.copyWith((message) => updates(message as NewRobotRequest)) as NewRobotRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewRobotRequest create() => NewRobotRequest._();
  NewRobotRequest createEmptyInstance() => create();
  static $pb.PbList<NewRobotRequest> createRepeated() => $pb.PbList<NewRobotRequest>();
  @$core.pragma('dart2js:noInline')
  static NewRobotRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewRobotRequest>(create);
  static NewRobotRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get location => $_getSZ(1);
  @$pb.TagNumber(2)
  set location($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocation() => clearField(2);
}

class NewRobotResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NewRobotResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  NewRobotResponse._() : super();
  factory NewRobotResponse({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory NewRobotResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewRobotResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewRobotResponse clone() => NewRobotResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewRobotResponse copyWith(void Function(NewRobotResponse) updates) => super.copyWith((message) => updates(message as NewRobotResponse)) as NewRobotResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewRobotResponse create() => NewRobotResponse._();
  NewRobotResponse createEmptyInstance() => create();
  static $pb.PbList<NewRobotResponse> createRepeated() => $pb.PbList<NewRobotResponse>();
  @$core.pragma('dart2js:noInline')
  static NewRobotResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewRobotResponse>(create);
  static NewRobotResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class UpdateRobotRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateRobotRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location')
    ..hasRequiredFields = false
  ;

  UpdateRobotRequest._() : super();
  factory UpdateRobotRequest({
    $core.String? id,
    $core.String? name,
    $core.String? location,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (location != null) {
      _result.location = location;
    }
    return _result;
  }
  factory UpdateRobotRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateRobotRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateRobotRequest clone() => UpdateRobotRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateRobotRequest copyWith(void Function(UpdateRobotRequest) updates) => super.copyWith((message) => updates(message as UpdateRobotRequest)) as UpdateRobotRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateRobotRequest create() => UpdateRobotRequest._();
  UpdateRobotRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateRobotRequest> createRepeated() => $pb.PbList<UpdateRobotRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateRobotRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateRobotRequest>(create);
  static UpdateRobotRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get location => $_getSZ(2);
  @$pb.TagNumber(3)
  set location($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLocation() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocation() => clearField(3);
}

class UpdateRobotResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateRobotResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOM<Robot>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'robot', subBuilder: Robot.create)
    ..hasRequiredFields = false
  ;

  UpdateRobotResponse._() : super();
  factory UpdateRobotResponse({
    Robot? robot,
  }) {
    final _result = create();
    if (robot != null) {
      _result.robot = robot;
    }
    return _result;
  }
  factory UpdateRobotResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateRobotResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateRobotResponse clone() => UpdateRobotResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateRobotResponse copyWith(void Function(UpdateRobotResponse) updates) => super.copyWith((message) => updates(message as UpdateRobotResponse)) as UpdateRobotResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateRobotResponse create() => UpdateRobotResponse._();
  UpdateRobotResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateRobotResponse> createRepeated() => $pb.PbList<UpdateRobotResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateRobotResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateRobotResponse>(create);
  static UpdateRobotResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Robot get robot => $_getN(0);
  @$pb.TagNumber(1)
  set robot(Robot v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRobot() => $_has(0);
  @$pb.TagNumber(1)
  void clearRobot() => clearField(1);
  @$pb.TagNumber(1)
  Robot ensureRobot() => $_ensure(0);
}

class DeleteRobotRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteRobotRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  DeleteRobotRequest._() : super();
  factory DeleteRobotRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeleteRobotRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteRobotRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteRobotRequest clone() => DeleteRobotRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteRobotRequest copyWith(void Function(DeleteRobotRequest) updates) => super.copyWith((message) => updates(message as DeleteRobotRequest)) as DeleteRobotRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteRobotRequest create() => DeleteRobotRequest._();
  DeleteRobotRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteRobotRequest> createRepeated() => $pb.PbList<DeleteRobotRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteRobotRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteRobotRequest>(create);
  static DeleteRobotRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteRobotResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteRobotResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteRobotResponse._() : super();
  factory DeleteRobotResponse() => create();
  factory DeleteRobotResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteRobotResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteRobotResponse clone() => DeleteRobotResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteRobotResponse copyWith(void Function(DeleteRobotResponse) updates) => super.copyWith((message) => updates(message as DeleteRobotResponse)) as DeleteRobotResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteRobotResponse create() => DeleteRobotResponse._();
  DeleteRobotResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteRobotResponse> createRepeated() => $pb.PbList<DeleteRobotResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteRobotResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteRobotResponse>(create);
  static DeleteRobotResponse? _defaultInstance;
}

class MarkPartAsMainRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MarkPartAsMainRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'partId')
    ..hasRequiredFields = false
  ;

  MarkPartAsMainRequest._() : super();
  factory MarkPartAsMainRequest({
    $core.String? partId,
  }) {
    final _result = create();
    if (partId != null) {
      _result.partId = partId;
    }
    return _result;
  }
  factory MarkPartAsMainRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MarkPartAsMainRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MarkPartAsMainRequest clone() => MarkPartAsMainRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MarkPartAsMainRequest copyWith(void Function(MarkPartAsMainRequest) updates) => super.copyWith((message) => updates(message as MarkPartAsMainRequest)) as MarkPartAsMainRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MarkPartAsMainRequest create() => MarkPartAsMainRequest._();
  MarkPartAsMainRequest createEmptyInstance() => create();
  static $pb.PbList<MarkPartAsMainRequest> createRepeated() => $pb.PbList<MarkPartAsMainRequest>();
  @$core.pragma('dart2js:noInline')
  static MarkPartAsMainRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MarkPartAsMainRequest>(create);
  static MarkPartAsMainRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get partId => $_getSZ(0);
  @$pb.TagNumber(1)
  set partId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPartId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartId() => clearField(1);
}

class MarkPartAsMainResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MarkPartAsMainResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.app.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MarkPartAsMainResponse._() : super();
  factory MarkPartAsMainResponse() => create();
  factory MarkPartAsMainResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MarkPartAsMainResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MarkPartAsMainResponse clone() => MarkPartAsMainResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MarkPartAsMainResponse copyWith(void Function(MarkPartAsMainResponse) updates) => super.copyWith((message) => updates(message as MarkPartAsMainResponse)) as MarkPartAsMainResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MarkPartAsMainResponse create() => MarkPartAsMainResponse._();
  MarkPartAsMainResponse createEmptyInstance() => create();
  static $pb.PbList<MarkPartAsMainResponse> createRepeated() => $pb.PbList<MarkPartAsMainResponse>();
  @$core.pragma('dart2js:noInline')
  static MarkPartAsMainResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MarkPartAsMainResponse>(create);
  static MarkPartAsMainResponse? _defaultInstance;
}

