import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:grpc/grpc.dart';
import 'package:injectable/injectable.dart';
import 'package:viam_marine/app/domain/resource/model/resource_filters.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/domain/resource/service/resource_service_impl.dart';
import 'package:viam_marine/app/presentation/page/dashboard/cubit/dashboard_state.dart';
import 'package:viam_marine/sdk/src/data/viam/rpc/webrtc/v1/signaling.pb.dart';
import 'package:viam_marine/sdk/viam_sdk.dart';

typedef void StreamStateCallback(MediaStream stream);

@injectable
class DashboardCubit extends Cubit<DashboardState> {
  final ResourceService _resourceService;
  final ViamSdk _viamSdk;

  RTCPeerConnection? peerConnection;
  MediaStream? localStream;
  MediaStream? remoteStream;
  String? roomId;
  String? currentRoomText;
  StreamStateCallback? onAddRemoteStream;
  ResponseStream<CallResponse>? _responseStream;
  final RTCVideoRenderer rtcVideoRenderer = RTCVideoRenderer();
  String uuid = '';
  RTCSessionDescription? remotesdp;
  bool sentDoneOrErrorOnce = false;
  RTCSessionDescription? offer;

  RTCDataChannel? negotiationChannel;
  RTCDataChannel? dataChannel;
  List<ICECandidate> candidates = [];

  DashboardCubit(
    this._resourceService,
    @Named('camera') this._viamSdk,
  ) : super(const DashboardState.idle());

  Future<void> init() async {
    try {
      emit(const DashboardState.loading());
      await rtcVideoRenderer.initialize();
      final resources = await _resourceService.getResourceNames();
      final List<ViamAppResourceName> sensors = [];
      final List<ViamAppResourceName> positionSensors = [];

      for (final resource in resources) {
        if (resource.subtype == ViamAppResourceSubtypeFilter.sensor.name &&
            resource.name.contains(ViamAppResourceNameFilter.fluid.name)) {
          sensors.add(resource);
        } else if (resource.name.contains(ViamAppResourceNameFilter.movement.name)) {
          positionSensors.add(resource);
        } else {
          continue;
        }
      }

      sortSensorsByName(sensors);

      emit(DashboardState.loaded(sensors, positionSensors));
    } catch (_) {
      //TODO: need to add error tracking
      emit(const DashboardState.error());
    }
  }

  void sortSensorsByName(List<ViamAppResourceName> sensors) => sensors.sort(
        (sensorA, sensorB) => sensorA.name.compareTo(sensorB.name),
      );
}
