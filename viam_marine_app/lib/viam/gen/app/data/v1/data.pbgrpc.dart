///
//  Generated code. Do not modify.
//  source: app/data/v1/data.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'data.pb.dart' as $0;
export 'data.pb.dart';

class DataServiceClient extends $grpc.Client {
  static final _$tabularDataByFilter = $grpc.ClientMethod<
          $0.TabularDataByFilterRequest, $0.TabularDataByFilterResponse>(
      '/viam.app.data.v1.DataService/TabularDataByFilter',
      ($0.TabularDataByFilterRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.TabularDataByFilterResponse.fromBuffer(value));
  static final _$binaryDataByFilter = $grpc.ClientMethod<
          $0.BinaryDataByFilterRequest, $0.BinaryDataByFilterResponse>(
      '/viam.app.data.v1.DataService/BinaryDataByFilter',
      ($0.BinaryDataByFilterRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.BinaryDataByFilterResponse.fromBuffer(value));
  static final _$binaryDataByIDs =
      $grpc.ClientMethod<$0.BinaryDataByIDsRequest, $0.BinaryDataByIDsResponse>(
          '/viam.app.data.v1.DataService/BinaryDataByIDs',
          ($0.BinaryDataByIDsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.BinaryDataByIDsResponse.fromBuffer(value));

  DataServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.TabularDataByFilterResponse> tabularDataByFilter(
      $0.TabularDataByFilterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$tabularDataByFilter, request, options: options);
  }

  $grpc.ResponseFuture<$0.BinaryDataByFilterResponse> binaryDataByFilter(
      $0.BinaryDataByFilterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$binaryDataByFilter, request, options: options);
  }

  $grpc.ResponseFuture<$0.BinaryDataByIDsResponse> binaryDataByIDs(
      $0.BinaryDataByIDsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$binaryDataByIDs, request, options: options);
  }
}

abstract class DataServiceBase extends $grpc.Service {
  $core.String get $name => 'viam.app.data.v1.DataService';

  DataServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.TabularDataByFilterRequest,
            $0.TabularDataByFilterResponse>(
        'TabularDataByFilter',
        tabularDataByFilter_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.TabularDataByFilterRequest.fromBuffer(value),
        ($0.TabularDataByFilterResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BinaryDataByFilterRequest,
            $0.BinaryDataByFilterResponse>(
        'BinaryDataByFilter',
        binaryDataByFilter_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.BinaryDataByFilterRequest.fromBuffer(value),
        ($0.BinaryDataByFilterResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BinaryDataByIDsRequest,
            $0.BinaryDataByIDsResponse>(
        'BinaryDataByIDs',
        binaryDataByIDs_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.BinaryDataByIDsRequest.fromBuffer(value),
        ($0.BinaryDataByIDsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.TabularDataByFilterResponse> tabularDataByFilter_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.TabularDataByFilterRequest> request) async {
    return tabularDataByFilter(call, await request);
  }

  $async.Future<$0.BinaryDataByFilterResponse> binaryDataByFilter_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.BinaryDataByFilterRequest> request) async {
    return binaryDataByFilter(call, await request);
  }

  $async.Future<$0.BinaryDataByIDsResponse> binaryDataByIDs_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.BinaryDataByIDsRequest> request) async {
    return binaryDataByIDs(call, await request);
  }

  $async.Future<$0.TabularDataByFilterResponse> tabularDataByFilter(
      $grpc.ServiceCall call, $0.TabularDataByFilterRequest request);
  $async.Future<$0.BinaryDataByFilterResponse> binaryDataByFilter(
      $grpc.ServiceCall call, $0.BinaryDataByFilterRequest request);
  $async.Future<$0.BinaryDataByIDsResponse> binaryDataByIDs(
      $grpc.ServiceCall call, $0.BinaryDataByIDsRequest request);
}
