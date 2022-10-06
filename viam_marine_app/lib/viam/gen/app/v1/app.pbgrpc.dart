///
//  Generated code. Do not modify.
//  source: app/v1/app.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'app.pb.dart' as $0;
export 'app.pb.dart';

class AppServiceClient extends $grpc.Client {
  static final _$listOrganizations = $grpc.ClientMethod<
          $0.ListOrganizationsRequest, $0.ListOrganizationsResponse>(
      '/viam.app.v1.AppService/ListOrganizations',
      ($0.ListOrganizationsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ListOrganizationsResponse.fromBuffer(value));
  static final _$listLocations =
      $grpc.ClientMethod<$0.ListLocationsRequest, $0.ListLocationsResponse>(
          '/viam.app.v1.AppService/ListLocations',
          ($0.ListLocationsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListLocationsResponse.fromBuffer(value));
  static final _$locationAuth =
      $grpc.ClientMethod<$0.LocationAuthRequest, $0.LocationAuthResponse>(
          '/viam.app.v1.AppService/LocationAuth',
          ($0.LocationAuthRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.LocationAuthResponse.fromBuffer(value));
  static final _$getRobot =
      $grpc.ClientMethod<$0.GetRobotRequest, $0.GetRobotResponse>(
          '/viam.app.v1.AppService/GetRobot',
          ($0.GetRobotRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetRobotResponse.fromBuffer(value));
  static final _$getRobotParts =
      $grpc.ClientMethod<$0.GetRobotPartsRequest, $0.GetRobotPartsResponse>(
          '/viam.app.v1.AppService/GetRobotParts',
          ($0.GetRobotPartsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetRobotPartsResponse.fromBuffer(value));
  static final _$getRobotPart =
      $grpc.ClientMethod<$0.GetRobotPartRequest, $0.GetRobotPartResponse>(
          '/viam.app.v1.AppService/GetRobotPart',
          ($0.GetRobotPartRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetRobotPartResponse.fromBuffer(value));
  static final _$getRobotPartLogs = $grpc.ClientMethod<
          $0.GetRobotPartLogsRequest, $0.GetRobotPartLogsResponse>(
      '/viam.app.v1.AppService/GetRobotPartLogs',
      ($0.GetRobotPartLogsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetRobotPartLogsResponse.fromBuffer(value));
  static final _$tailRobotPartLogs = $grpc.ClientMethod<
          $0.TailRobotPartLogsRequest, $0.TailRobotPartLogsResponse>(
      '/viam.app.v1.AppService/TailRobotPartLogs',
      ($0.TailRobotPartLogsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.TailRobotPartLogsResponse.fromBuffer(value));
  static final _$getRobotPartHistory = $grpc.ClientMethod<
          $0.GetRobotPartHistoryRequest, $0.GetRobotPartHistoryResponse>(
      '/viam.app.v1.AppService/GetRobotPartHistory',
      ($0.GetRobotPartHistoryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetRobotPartHistoryResponse.fromBuffer(value));
  static final _$updateRobotPart =
      $grpc.ClientMethod<$0.UpdateRobotPartRequest, $0.UpdateRobotPartResponse>(
          '/viam.app.v1.AppService/UpdateRobotPart',
          ($0.UpdateRobotPartRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UpdateRobotPartResponse.fromBuffer(value));
  static final _$newRobotPart =
      $grpc.ClientMethod<$0.NewRobotPartRequest, $0.NewRobotPartResponse>(
          '/viam.app.v1.AppService/NewRobotPart',
          ($0.NewRobotPartRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.NewRobotPartResponse.fromBuffer(value));
  static final _$deleteRobotPart =
      $grpc.ClientMethod<$0.DeleteRobotPartRequest, $0.DeleteRobotPartResponse>(
          '/viam.app.v1.AppService/DeleteRobotPart',
          ($0.DeleteRobotPartRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DeleteRobotPartResponse.fromBuffer(value));
  static final _$markPartAsMain =
      $grpc.ClientMethod<$0.MarkPartAsMainRequest, $0.MarkPartAsMainResponse>(
          '/viam.app.v1.AppService/MarkPartAsMain',
          ($0.MarkPartAsMainRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.MarkPartAsMainResponse.fromBuffer(value));
  static final _$findRobots =
      $grpc.ClientMethod<$0.FindRobotsRequest, $0.FindRobotsResponse>(
          '/viam.app.v1.AppService/FindRobots',
          ($0.FindRobotsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.FindRobotsResponse.fromBuffer(value));
  static final _$newRobot =
      $grpc.ClientMethod<$0.NewRobotRequest, $0.NewRobotResponse>(
          '/viam.app.v1.AppService/NewRobot',
          ($0.NewRobotRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.NewRobotResponse.fromBuffer(value));
  static final _$updateRobot =
      $grpc.ClientMethod<$0.UpdateRobotRequest, $0.UpdateRobotResponse>(
          '/viam.app.v1.AppService/UpdateRobot',
          ($0.UpdateRobotRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UpdateRobotResponse.fromBuffer(value));
  static final _$deleteRobot =
      $grpc.ClientMethod<$0.DeleteRobotRequest, $0.DeleteRobotResponse>(
          '/viam.app.v1.AppService/DeleteRobot',
          ($0.DeleteRobotRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DeleteRobotResponse.fromBuffer(value));

  AppServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ListOrganizationsResponse> listOrganizations(
      $0.ListOrganizationsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listOrganizations, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListLocationsResponse> listLocations(
      $0.ListLocationsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listLocations, request, options: options);
  }

  $grpc.ResponseFuture<$0.LocationAuthResponse> locationAuth(
      $0.LocationAuthRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$locationAuth, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetRobotResponse> getRobot($0.GetRobotRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRobot, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetRobotPartsResponse> getRobotParts(
      $0.GetRobotPartsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRobotParts, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetRobotPartResponse> getRobotPart(
      $0.GetRobotPartRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRobotPart, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetRobotPartLogsResponse> getRobotPartLogs(
      $0.GetRobotPartLogsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRobotPartLogs, request, options: options);
  }

  $grpc.ResponseStream<$0.TailRobotPartLogsResponse> tailRobotPartLogs(
      $0.TailRobotPartLogsRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$tailRobotPartLogs, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.GetRobotPartHistoryResponse> getRobotPartHistory(
      $0.GetRobotPartHistoryRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRobotPartHistory, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateRobotPartResponse> updateRobotPart(
      $0.UpdateRobotPartRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRobotPart, request, options: options);
  }

  $grpc.ResponseFuture<$0.NewRobotPartResponse> newRobotPart(
      $0.NewRobotPartRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$newRobotPart, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteRobotPartResponse> deleteRobotPart(
      $0.DeleteRobotPartRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRobotPart, request, options: options);
  }

  $grpc.ResponseFuture<$0.MarkPartAsMainResponse> markPartAsMain(
      $0.MarkPartAsMainRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$markPartAsMain, request, options: options);
  }

  $grpc.ResponseFuture<$0.FindRobotsResponse> findRobots(
      $0.FindRobotsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$findRobots, request, options: options);
  }

  $grpc.ResponseFuture<$0.NewRobotResponse> newRobot($0.NewRobotRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$newRobot, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateRobotResponse> updateRobot(
      $0.UpdateRobotRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRobot, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteRobotResponse> deleteRobot(
      $0.DeleteRobotRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRobot, request, options: options);
  }
}

abstract class AppServiceBase extends $grpc.Service {
  $core.String get $name => 'viam.app.v1.AppService';

  AppServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListOrganizationsRequest,
            $0.ListOrganizationsResponse>(
        'ListOrganizations',
        listOrganizations_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ListOrganizationsRequest.fromBuffer(value),
        ($0.ListOrganizationsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ListLocationsRequest, $0.ListLocationsResponse>(
            'ListLocations',
            listLocations_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ListLocationsRequest.fromBuffer(value),
            ($0.ListLocationsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.LocationAuthRequest, $0.LocationAuthResponse>(
            'LocationAuth',
            locationAuth_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.LocationAuthRequest.fromBuffer(value),
            ($0.LocationAuthResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRobotRequest, $0.GetRobotResponse>(
        'GetRobot',
        getRobot_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRobotRequest.fromBuffer(value),
        ($0.GetRobotResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetRobotPartsRequest, $0.GetRobotPartsResponse>(
            'GetRobotParts',
            getRobotParts_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetRobotPartsRequest.fromBuffer(value),
            ($0.GetRobotPartsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetRobotPartRequest, $0.GetRobotPartResponse>(
            'GetRobotPart',
            getRobotPart_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetRobotPartRequest.fromBuffer(value),
            ($0.GetRobotPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRobotPartLogsRequest,
            $0.GetRobotPartLogsResponse>(
        'GetRobotPartLogs',
        getRobotPartLogs_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetRobotPartLogsRequest.fromBuffer(value),
        ($0.GetRobotPartLogsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TailRobotPartLogsRequest,
            $0.TailRobotPartLogsResponse>(
        'TailRobotPartLogs',
        tailRobotPartLogs_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.TailRobotPartLogsRequest.fromBuffer(value),
        ($0.TailRobotPartLogsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRobotPartHistoryRequest,
            $0.GetRobotPartHistoryResponse>(
        'GetRobotPartHistory',
        getRobotPartHistory_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetRobotPartHistoryRequest.fromBuffer(value),
        ($0.GetRobotPartHistoryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateRobotPartRequest,
            $0.UpdateRobotPartResponse>(
        'UpdateRobotPart',
        updateRobotPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateRobotPartRequest.fromBuffer(value),
        ($0.UpdateRobotPartResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.NewRobotPartRequest, $0.NewRobotPartResponse>(
            'NewRobotPart',
            newRobotPart_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.NewRobotPartRequest.fromBuffer(value),
            ($0.NewRobotPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteRobotPartRequest,
            $0.DeleteRobotPartResponse>(
        'DeleteRobotPart',
        deleteRobotPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteRobotPartRequest.fromBuffer(value),
        ($0.DeleteRobotPartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MarkPartAsMainRequest,
            $0.MarkPartAsMainResponse>(
        'MarkPartAsMain',
        markPartAsMain_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.MarkPartAsMainRequest.fromBuffer(value),
        ($0.MarkPartAsMainResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FindRobotsRequest, $0.FindRobotsResponse>(
        'FindRobots',
        findRobots_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FindRobotsRequest.fromBuffer(value),
        ($0.FindRobotsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.NewRobotRequest, $0.NewRobotResponse>(
        'NewRobot',
        newRobot_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.NewRobotRequest.fromBuffer(value),
        ($0.NewRobotResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UpdateRobotRequest, $0.UpdateRobotResponse>(
            'UpdateRobot',
            updateRobot_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UpdateRobotRequest.fromBuffer(value),
            ($0.UpdateRobotResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.DeleteRobotRequest, $0.DeleteRobotResponse>(
            'DeleteRobot',
            deleteRobot_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.DeleteRobotRequest.fromBuffer(value),
            ($0.DeleteRobotResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListOrganizationsResponse> listOrganizations_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListOrganizationsRequest> request) async {
    return listOrganizations(call, await request);
  }

  $async.Future<$0.ListLocationsResponse> listLocations_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListLocationsRequest> request) async {
    return listLocations(call, await request);
  }

  $async.Future<$0.LocationAuthResponse> locationAuth_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.LocationAuthRequest> request) async {
    return locationAuth(call, await request);
  }

  $async.Future<$0.GetRobotResponse> getRobot_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetRobotRequest> request) async {
    return getRobot(call, await request);
  }

  $async.Future<$0.GetRobotPartsResponse> getRobotParts_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetRobotPartsRequest> request) async {
    return getRobotParts(call, await request);
  }

  $async.Future<$0.GetRobotPartResponse> getRobotPart_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetRobotPartRequest> request) async {
    return getRobotPart(call, await request);
  }

  $async.Future<$0.GetRobotPartLogsResponse> getRobotPartLogs_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetRobotPartLogsRequest> request) async {
    return getRobotPartLogs(call, await request);
  }

  $async.Stream<$0.TailRobotPartLogsResponse> tailRobotPartLogs_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.TailRobotPartLogsRequest> request) async* {
    yield* tailRobotPartLogs(call, await request);
  }

  $async.Future<$0.GetRobotPartHistoryResponse> getRobotPartHistory_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetRobotPartHistoryRequest> request) async {
    return getRobotPartHistory(call, await request);
  }

  $async.Future<$0.UpdateRobotPartResponse> updateRobotPart_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.UpdateRobotPartRequest> request) async {
    return updateRobotPart(call, await request);
  }

  $async.Future<$0.NewRobotPartResponse> newRobotPart_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.NewRobotPartRequest> request) async {
    return newRobotPart(call, await request);
  }

  $async.Future<$0.DeleteRobotPartResponse> deleteRobotPart_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DeleteRobotPartRequest> request) async {
    return deleteRobotPart(call, await request);
  }

  $async.Future<$0.MarkPartAsMainResponse> markPartAsMain_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.MarkPartAsMainRequest> request) async {
    return markPartAsMain(call, await request);
  }

  $async.Future<$0.FindRobotsResponse> findRobots_Pre($grpc.ServiceCall call,
      $async.Future<$0.FindRobotsRequest> request) async {
    return findRobots(call, await request);
  }

  $async.Future<$0.NewRobotResponse> newRobot_Pre(
      $grpc.ServiceCall call, $async.Future<$0.NewRobotRequest> request) async {
    return newRobot(call, await request);
  }

  $async.Future<$0.UpdateRobotResponse> updateRobot_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateRobotRequest> request) async {
    return updateRobot(call, await request);
  }

  $async.Future<$0.DeleteRobotResponse> deleteRobot_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteRobotRequest> request) async {
    return deleteRobot(call, await request);
  }

  $async.Future<$0.ListOrganizationsResponse> listOrganizations(
      $grpc.ServiceCall call, $0.ListOrganizationsRequest request);
  $async.Future<$0.ListLocationsResponse> listLocations(
      $grpc.ServiceCall call, $0.ListLocationsRequest request);
  $async.Future<$0.LocationAuthResponse> locationAuth(
      $grpc.ServiceCall call, $0.LocationAuthRequest request);
  $async.Future<$0.GetRobotResponse> getRobot(
      $grpc.ServiceCall call, $0.GetRobotRequest request);
  $async.Future<$0.GetRobotPartsResponse> getRobotParts(
      $grpc.ServiceCall call, $0.GetRobotPartsRequest request);
  $async.Future<$0.GetRobotPartResponse> getRobotPart(
      $grpc.ServiceCall call, $0.GetRobotPartRequest request);
  $async.Future<$0.GetRobotPartLogsResponse> getRobotPartLogs(
      $grpc.ServiceCall call, $0.GetRobotPartLogsRequest request);
  $async.Stream<$0.TailRobotPartLogsResponse> tailRobotPartLogs(
      $grpc.ServiceCall call, $0.TailRobotPartLogsRequest request);
  $async.Future<$0.GetRobotPartHistoryResponse> getRobotPartHistory(
      $grpc.ServiceCall call, $0.GetRobotPartHistoryRequest request);
  $async.Future<$0.UpdateRobotPartResponse> updateRobotPart(
      $grpc.ServiceCall call, $0.UpdateRobotPartRequest request);
  $async.Future<$0.NewRobotPartResponse> newRobotPart(
      $grpc.ServiceCall call, $0.NewRobotPartRequest request);
  $async.Future<$0.DeleteRobotPartResponse> deleteRobotPart(
      $grpc.ServiceCall call, $0.DeleteRobotPartRequest request);
  $async.Future<$0.MarkPartAsMainResponse> markPartAsMain(
      $grpc.ServiceCall call, $0.MarkPartAsMainRequest request);
  $async.Future<$0.FindRobotsResponse> findRobots(
      $grpc.ServiceCall call, $0.FindRobotsRequest request);
  $async.Future<$0.NewRobotResponse> newRobot(
      $grpc.ServiceCall call, $0.NewRobotRequest request);
  $async.Future<$0.UpdateRobotResponse> updateRobot(
      $grpc.ServiceCall call, $0.UpdateRobotRequest request);
  $async.Future<$0.DeleteRobotResponse> deleteRobot(
      $grpc.ServiceCall call, $0.DeleteRobotRequest request);
}
