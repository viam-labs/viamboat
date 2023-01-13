///
//  Generated code. Do not modify.
//  source: component/sensor/v1/sensor.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'sensor.pb.dart' as $0;
export 'sensor.pb.dart';

class SensorServiceClient extends $grpc.Client {
  static final _$getReadings =
      $grpc.ClientMethod<$0.GetReadingsRequest, $0.GetReadingsResponse>(
          '/viam.component.sensor.v1.SensorService/GetReadings',
          ($0.GetReadingsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetReadingsResponse.fromBuffer(value));

  SensorServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetReadingsResponse> getReadings(
      $0.GetReadingsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReadings, request, options: options);
  }
}

abstract class SensorServiceBase extends $grpc.Service {
  $core.String get $name => 'viam.component.sensor.v1.SensorService';

  SensorServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.GetReadingsRequest, $0.GetReadingsResponse>(
            'GetReadings',
            getReadings_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetReadingsRequest.fromBuffer(value),
            ($0.GetReadingsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetReadingsResponse> getReadings_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetReadingsRequest> request) async {
    return getReadings(call, await request);
  }

  $async.Future<$0.GetReadingsResponse> getReadings(
      $grpc.ServiceCall call, $0.GetReadingsRequest request);
}