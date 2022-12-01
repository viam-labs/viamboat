import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/widgets/common_tile_body/common_tile_body.dart';
import 'package:viam_marine/app/presentation/widgets/webrtc_camera_widget/cubit/webrtc_camera_cubit.dart';
import 'package:viam_marine/app/presentation/widgets/webrtc_camera_widget/cubit/webrtc_camera_state.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebrtcCameraWidget extends StatefulWidget {
  const WebrtcCameraWidget({super.key});

  @override
  State<WebrtcCameraWidget> createState() => _WebrtcCameraWidgetState();
}

class _WebrtcCameraWidgetState extends State<WebrtcCameraWidget> {
  final Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => getIt<WebrtcCameraCubit>()..init(),
        child: BlocBuilder<WebrtcCameraCubit, WebrtcCameraState>(
          builder: (context, state) => state.maybeWhen(
            loaded: () => CommonTileBody(
              childHeight: 230,
              title: "Camera",
              // child: RTCVideoView(
              //   context.read<WebrtcCameraCubit>().rtcVideoRenderer,
              // ),
              child: WebView(
                initialUrl:
                    'https://viam-camera.web.app/?robotUrl=camera-main.xl6oiexz3d.viam.cloud&robotSecret=2824dhqonsdzjw09tphtlh7cvu1woushvvl4cofca4mviabh',
                javascriptMode: JavascriptMode.unrestricted,
                onWebViewCreated: (WebViewController webViewController) {
                  _controller.complete(webViewController);
                },
                onProgress: (int progress) {
                  print('WebView is loading (progress : $progress%)');
                },
                javascriptChannels: <JavascriptChannel>{
                  _toasterJavascriptChannel(context),
                },
                navigationDelegate: (NavigationRequest request) {
                  if (request.url.startsWith('https://www.youtube.com/')) {
                    print('blocking navigation to $request}');
                    return NavigationDecision.prevent;
                  }
                  print('allowing navigation to $request');
                  return NavigationDecision.navigate;
                },
                onPageStarted: (String url) {
                  print('Page started loading: $url');
                },
                onPageFinished: (String url) {
                  print('Page finished loading: $url');
                },
                gestureNavigationEnabled: true,
                backgroundColor: const Color(0x00000000),
              ),
            ),
            orElse: () => const SizedBox.shrink(),
          ),
        ),
      );

  JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
    return JavascriptChannel(
        name: 'Toaster',
        onMessageReceived: (JavascriptMessage message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        });
  }

  Widget favoriteButton() {
    return FutureBuilder<WebViewController>(
        future: _controller.future,
        builder: (BuildContext context, AsyncSnapshot<WebViewController> controller) {
          return FloatingActionButton(
            onPressed: () async {
              String? url;
              if (controller.hasData) {
                url = await controller.data!.currentUrl();
              }
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    controller.hasData ? 'Favorited $url' : 'Unable to favorite',
                  ),
                ),
              );
            },
            child: const Icon(Icons.favorite),
          );
        });
  }
}
