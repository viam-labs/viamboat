import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:viam_marine/app/presentation/page/dashboard/cubit/dashboard_cubit.dart';
import 'package:viam_marine/app/presentation/widgets/common_tile_body/common_tile_body.dart';

class VideoRender extends StatefulWidget {
  const VideoRender({super.key});

  @override
  State<VideoRender> createState() => _VideoRenderState();
}

class _VideoRenderState extends State<VideoRender> {
  @override
  Widget build(BuildContext context) => CommonTileBody(
        childHeight: 230,
        title: "Camera",
        child: RTCVideoView(
          context.read<DashboardCubit>().rtcVideoRenderer,
        ),
      );
}
