import 'dart:async';

import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:viam_marine/sdk/src/data/interceptors/auth_header_interceptor.dart';
import 'package:viam_marine/sdk/src/gen/component/camera/v1/camera.pbgrpc.dart';
import 'package:viam_marine/sdk/src/gen/proto/stream/v1/stream.pbgrpc.dart';
import 'package:viam_marine/sdk/src/gen/robot/v1/robot.pbgrpc.dart';
import 'package:viam_marine/sdk/src/data/web_rtc/web_rtc_client/web_rtc_client.dart';

const mimeType = 'image/png';

class ViamCameraDataSource {
  final ClientChannelBase _client;
  final AuthHeaderInterceptor _authHeaderInterceptor;
  final String? secure;

  final Map<String, StreamController<MediaStream>> _videoStreams = {};

  Stream<MediaStream> getvideoStream(String cameraName) {
    // ignore: close_sinks
    final cameraStream = StreamController<MediaStream>.broadcast();

    _videoStreams[cameraName] = cameraStream;

    return cameraStream.stream;
  }

  StreamSubscription? _errorHandler;

  ViamCameraDataSource(
    this._client,
    this._authHeaderInterceptor,
    this.secure,
  ) {
    if (_client is WebRtcClientChannel) {
      final client = _client as WebRtcClientChannel;
      client.rtcPeerConnection.onAddStream = (MediaStream stream) {
        _videoStreams[stream.id]?.add(stream);
      };

      client.rtcPeerConnection.onConnectionState = (state) {
        if (state == RTCPeerConnectionState.RTCPeerConnectionStateFailed ||
            state == RTCPeerConnectionState.RTCPeerConnectionStateDisconnected) {
          _errorHandler = Stream.periodic(const Duration(seconds: 1)).listen((_) {
            for (final stream in _videoStreams.entries) {
              stream.value.addError(Exception('PeerConnection error'));
            }
          });
        }
      };
    }
  }

  Future<GetImageResponse> getCameraFrame(
    String cameraName,
  ) async {
    final stub = RobotServiceClient(
      _client,
      interceptors: secure != null ? [_authHeaderInterceptor] : [],
    );
    final resourceResponse = await stub.resourceNames(
      ResourceNamesRequest(),
    );
    final cameraResources = resourceResponse.resources.toList(growable: false);

    final cameraResource = cameraResources.firstWhere((resource) => resource.subtype == 'camera');

    final cameraClient = CameraServiceClient(
      _client,
      interceptors: [_authHeaderInterceptor],
    );

    final cameraRequest = GetImageRequest(mimeType: mimeType);
    cameraRequest.name = cameraResource.name;

    final response = await cameraClient.getImage(cameraRequest);
    return response;
  }

  Future<void> getCameraVideo(String cameraName) async {
    final streamClient = StreamServiceClient(_client);
    final request = AddStreamRequest(name: cameraName);
    await streamClient.addStream(request);
  }

  Future<void> dispose() async {
    for (final stream in _videoStreams.entries) {
      await stream.value.close();
    }
    await _errorHandler?.cancel();
  }
}
