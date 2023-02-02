import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/widgets/common_tile_body/common_tile_body.dart';
import 'package:viam_marine/app/presentation/widgets/webrtc_camera_tile/cubit/webrtc_camera_cubit.dart';
import 'package:viam_marine/app/presentation/widgets/webrtc_camera_tile/cubit/webrtc_camera_state.dart';

class WebrtcCameraWidget extends StatelessWidget {
  final ViamAppResourceName cameraSensor;

  const WebrtcCameraWidget(
    this.cameraSensor, {
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => getIt<WebrtcCameraCubit>()..init(cameraSensor.name),
        child: BlocBuilder<WebrtcCameraCubit, WebrtcCameraState>(
          builder: (context, state) => state.maybeWhen(
            loaded: () => CommonTileBody(
              childHeight: 190,
              title: Strings.of(context).camera_tile_camera_name(cameraSensor.name),
              child: RTCVideoView(
                context.read<WebrtcCameraCubit>().rtcVideoRenderer,
                objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
              ),
            ),
            orElse: () => const SizedBox.shrink(),
          ),
        ),
      );
}
