import 'dart:async';

import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:viam_marine/sdk/src/data/interceptors/auth_header_interceptor.dart';
import 'package:viam_marine/sdk/src/data/viam/components/camera/v1/camera.pbgrpc.dart';
import 'package:viam_marine/sdk/src/data/viam/robot/v1/robot.pbgrpc.dart';
import 'package:viam_marine/sdk/src/data/viam/stream/v1/stream.pbgrpc.dart';
import 'package:viam_marine/sdk/src/data/web_rtc/web_rtc_client/web_rtc_client.dart';

const mimeType = 'image/png';

class ViamCameraDataSource {
  final ClientChannelBase _client;
  final AuthHeaderInterceptor _authHeaderInterceptor;
  final String? secure;

  final StreamController<MediaStream> _videoStream = StreamController.broadcast();

  Stream<MediaStream> get videoStream => _videoStream.stream;
  StreamSubscription? _errorHandler;

  ViamCameraDataSource(
    this._client,
    this._authHeaderInterceptor,
    this.secure,
  ) {
    if (_client is WebRtcClientChannel) {
      final client = _client as WebRtcClientChannel;
      client.rtcPeerConnection.onAddStream = (MediaStream stream) {
        _videoStream.add(stream);
      };

      client.rtcPeerConnection.onConnectionState = (state) {
        if (state == RTCPeerConnectionState.RTCPeerConnectionStateFailed ||
            state == RTCPeerConnectionState.RTCPeerConnectionStateDisconnected) {
          _errorHandler = Stream.periodic(const Duration(seconds: 1)).listen((_) {
            _videoStream.addError(Exception('PeerConnection error'));
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
    await _videoStream.close();
    await _errorHandler?.cancel();
  }
}
