///
//  Generated code. Do not modify.
//  source: viam/robot/v1/robot.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'robot.pb.dart' as $0;
export 'robot.pb.dart';

class RobotServiceClient extends $grpc.Client {
  static final _$resourceNames =
      $grpc.ClientMethod<$0.ResourceNamesRequest, $0.ResourceNamesResponse>(
          '/viam.robot.v1.RobotService/ResourceNames',
          ($0.ResourceNamesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ResourceNamesResponse.fromBuffer(value));

  RobotServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ResourceNamesResponse> resourceNames(
      $0.ResourceNamesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$resourceNames, request, options: options);
  }
}

abstract class RobotServiceBase extends $grpc.Service {
  $core.String get $name => 'viam.robot.v1.RobotService';

  RobotServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.ResourceNamesRequest, $0.ResourceNamesResponse>(
            'ResourceNames',
            resourceNames_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ResourceNamesRequest.fromBuffer(value),
            ($0.ResourceNamesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ResourceNamesResponse> resourceNames_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ResourceNamesRequest> request) async {
    return resourceNames(call, await request);
  }

  $async.Future<$0.ResourceNamesResponse> resourceNames(
      $grpc.ServiceCall call, $0.ResourceNamesRequest request);
}
