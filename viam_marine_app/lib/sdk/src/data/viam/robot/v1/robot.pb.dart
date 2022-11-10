///
//  Generated code. Do not modify.
//  source: viam/robot/v1/robot.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../common/v1/common.pb.dart' as $1;

class ResourceNamesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResourceNamesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.robot.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ResourceNamesRequest._() : super();
  factory ResourceNamesRequest() => create();
  factory ResourceNamesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceNamesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceNamesRequest clone() => ResourceNamesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceNamesRequest copyWith(void Function(ResourceNamesRequest) updates) => super.copyWith((message) => updates(message as ResourceNamesRequest)) as ResourceNamesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResourceNamesRequest create() => ResourceNamesRequest._();
  ResourceNamesRequest createEmptyInstance() => create();
  static $pb.PbList<ResourceNamesRequest> createRepeated() => $pb.PbList<ResourceNamesRequest>();
  @$core.pragma('dart2js:noInline')
  static ResourceNamesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceNamesRequest>(create);
  static ResourceNamesRequest? _defaultInstance;
}

class ResourceNamesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResourceNamesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'viam.robot.v1'), createEmptyInstance: create)
    ..pc<$1.ResourceName>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resources', $pb.PbFieldType.PM, subBuilder: $1.ResourceName.create)
    ..hasRequiredFields = false
  ;

  ResourceNamesResponse._() : super();
  factory ResourceNamesResponse({
    $core.Iterable<$1.ResourceName>? resources,
  }) {
    final _result = create();
    if (resources != null) {
      _result.resources.addAll(resources);
    }
    return _result;
  }
  factory ResourceNamesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceNamesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceNamesResponse clone() => ResourceNamesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceNamesResponse copyWith(void Function(ResourceNamesResponse) updates) => super.copyWith((message) => updates(message as ResourceNamesResponse)) as ResourceNamesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResourceNamesResponse create() => ResourceNamesResponse._();
  ResourceNamesResponse createEmptyInstance() => create();
  static $pb.PbList<ResourceNamesResponse> createRepeated() => $pb.PbList<ResourceNamesResponse>();
  @$core.pragma('dart2js:noInline')
  static ResourceNamesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceNamesResponse>(create);
  static ResourceNamesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.ResourceName> get resources => $_getList(0);
}

