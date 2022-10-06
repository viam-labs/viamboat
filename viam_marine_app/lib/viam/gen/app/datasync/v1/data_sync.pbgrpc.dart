///
//  Generated code. Do not modify.
//  source: app/datasync/v1/data_sync.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'data_sync.pb.dart' as $0;
export 'data_sync.pb.dart';

class DataSyncServiceClient extends $grpc.Client {
  static final _$upload =
      $grpc.ClientMethod<$0.UploadRequest, $0.UploadResponse>(
          '/viam.app.datasync.v1.DataSyncService/Upload',
          ($0.UploadRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.UploadResponse.fromBuffer(value));

  DataSyncServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.UploadResponse> upload(
      $async.Stream<$0.UploadRequest> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$upload, request, options: options);
  }
}

abstract class DataSyncServiceBase extends $grpc.Service {
  $core.String get $name => 'viam.app.datasync.v1.DataSyncService';

  DataSyncServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.UploadRequest, $0.UploadResponse>(
        'Upload',
        upload,
        true,
        true,
        ($core.List<$core.int> value) => $0.UploadRequest.fromBuffer(value),
        ($0.UploadResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$0.UploadResponse> upload(
      $grpc.ServiceCall call, $async.Stream<$0.UploadRequest> request);
}
