import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_cubit.dart';
import 'package:viam_marine/app/presentation/page/camera/widgets/webrtc_camera/cubit/webrtc_camera_state.dart';
import 'package:viam_marine/app/presentation/widgets/common_tile_body/common_tile_body.dart';
import 'package:viam_marine/app/utils/date_time_formatter.dart';

const _cameraHeight = 290.0;

class WebrtcCameraTile extends StatelessWidget {
  final ViamAppResourceName cameraSensor;

  const WebrtcCameraTile(
    this.cameraSensor, {
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => getIt<WebrtcCameraCubit>()..init(cameraSensor.name),
        child: BlocBuilder<WebrtcCameraCubit, WebrtcCameraState>(
          builder: (context, state) => state.maybeWhen(
            loaded: (rtcVideoRenderer) => CommonTileBody(
              childHeight: _cameraHeight,
              title: Strings.of(context).camera_tile_camera_name(cameraSensor.name),
              child: RTCVideoView(
                rtcVideoRenderer,
                objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
              ),
            ),
            error: (viamError, rtcVideoRenderer, lastUpdated) => CommonTileBody(
              subtitle: lastUpdated != null ? DateTimeFormatter.dateToYearMonthDayHour(lastUpdated) : null,
              error: viamError,
              childHeight: _cameraHeight,
              title: Strings.of(context).camera_tile_camera_name(cameraSensor.name),
              child: RTCVideoView(
                rtcVideoRenderer,
                objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
              ),
            ),
            orElse: SizedBox.shrink,
          ),
        ),
      );
}
