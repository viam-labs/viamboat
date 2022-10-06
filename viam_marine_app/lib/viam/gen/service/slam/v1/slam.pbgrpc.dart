///
//  Generated code. Do not modify.
//  source: service/slam/v1/slam.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'slam.pb.dart' as $0;
export 'slam.pb.dart';

class SLAMServiceClient extends $grpc.Client {
  static final _$getPosition =
      $grpc.ClientMethod<$0.GetPositionRequest, $0.GetPositionResponse>(
          '/viam.service.slam.v1.SLAMService/GetPosition',
          ($0.GetPositionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetPositionResponse.fromBuffer(value));
  static final _$getMap =
      $grpc.ClientMethod<$0.GetMapRequest, $0.GetMapResponse>(
          '/viam.service.slam.v1.SLAMService/GetMap',
          ($0.GetMapRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.GetMapResponse.fromBuffer(value));

  SLAMServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetPositionResponse> getPosition(
      $0.GetPositionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPosition, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetMapResponse> getMap($0.GetMapRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMap, request, options: options);
  }
}

abstract class SLAMServiceBase extends $grpc.Service {
  $core.String get $name => 'viam.service.slam.v1.SLAMService';

  SLAMServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.GetPositionRequest, $0.GetPositionResponse>(
            'GetPosition',
            getPosition_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetPositionRequest.fromBuffer(value),
            ($0.GetPositionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetMapRequest, $0.GetMapResponse>(
        'GetMap',
        getMap_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetMapRequest.fromBuffer(value),
        ($0.GetMapResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetPositionResponse> getPosition_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetPositionRequest> request) async {
    return getPosition(call, await request);
  }

  $async.Future<$0.GetMapResponse> getMap_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetMapRequest> request) async {
    return getMap(call, await request);
  }

  $async.Future<$0.GetPositionResponse> getPosition(
      $grpc.ServiceCall call, $0.GetPositionRequest request);
  $async.Future<$0.GetMapResponse> getMap(
      $grpc.ServiceCall call, $0.GetMapRequest request);
}
