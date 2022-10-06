///
//  Generated code. Do not modify.
//  source: component/generic/v1/generic.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/struct.pb.dart' as $1;

class DoCommandRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DoCommandRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.component.generic.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOM<$1.Struct>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'command', subBuilder: $1.Struct.create)
    ..hasRequiredFields = false
  ;

  DoCommandRequest._() : super();
  factory DoCommandRequest({
    $core.String? name,
    $1.Struct? command,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (command != null) {
      _result.command = command;
    }
    return _result;
  }
  factory DoCommandRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DoCommandRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DoCommandRequest clone() => DoCommandRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DoCommandRequest copyWith(void Function(DoCommandRequest) updates) => super.copyWith((message) => updates(message as DoCommandRequest)) as DoCommandRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DoCommandRequest create() => DoCommandRequest._();
  DoCommandRequest createEmptyInstance() => create();
  static $pb.PbList<DoCommandRequest> createRepeated() => $pb.PbList<DoCommandRequest>();
  @$core.pragma('dart2js:noInline')
  static DoCommandRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DoCommandRequest>(create);
  static DoCommandRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $1.Struct get command => $_getN(1);
  @$pb.TagNumber(2)
  set command($1.Struct v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommand() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommand() => clearField(2);
  @$pb.TagNumber(2)
  $1.Struct ensureCommand() => $_ensure(1);
}

class DoCommandResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DoCommandResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.component.generic.v1'), createEmptyInstance: create)
    ..aOM<$1.Struct>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'result', subBuilder: $1.Struct.create)
    ..hasRequiredFields = false
  ;

  DoCommandResponse._() : super();
  factory DoCommandResponse({
    $1.Struct? result,
  }) {
    final _result = create();
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }
  factory DoCommandResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DoCommandResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DoCommandResponse clone() => DoCommandResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DoCommandResponse copyWith(void Function(DoCommandResponse) updates) => super.copyWith((message) => updates(message as DoCommandResponse)) as DoCommandResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DoCommandResponse create() => DoCommandResponse._();
  DoCommandResponse createEmptyInstance() => create();
  static $pb.PbList<DoCommandResponse> createRepeated() => $pb.PbList<DoCommandResponse>();
  @$core.pragma('dart2js:noInline')
  static DoCommandResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DoCommandResponse>(create);
  static DoCommandResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Struct get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($1.Struct v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  $1.Struct ensureResult() => $_ensure(0);
}

