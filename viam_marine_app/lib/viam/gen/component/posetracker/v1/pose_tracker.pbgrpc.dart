///
//  Generated code. Do not modify.
//  source: component/posetracker/v1/pose_tracker.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'pose_tracker.pb.dart' as $0;
export 'pose_tracker.pb.dart';

class PoseTrackerServiceClient extends $grpc.Client {
  static final _$getPoses =
      $grpc.ClientMethod<$0.GetPosesRequest, $0.GetPosesResponse>(
          '/viam.component.posetracker.v1.PoseTrackerService/GetPoses',
          ($0.GetPosesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetPosesResponse.fromBuffer(value));

  PoseTrackerServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetPosesResponse> getPoses($0.GetPosesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPoses, request, options: options);
  }
}

abstract class PoseTrackerServiceBase extends $grpc.Service {
  $core.String get $name => 'viam.component.posetracker.v1.PoseTrackerService';

  PoseTrackerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetPosesRequest, $0.GetPosesResponse>(
        'GetPoses',
        getPoses_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetPosesRequest.fromBuffer(value),
        ($0.GetPosesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetPosesResponse> getPoses_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetPosesRequest> request) async {
    return getPoses(call, await request);
  }

  $async.Future<$0.GetPosesResponse> getPoses(
      $grpc.ServiceCall call, $0.GetPosesRequest request);
}
