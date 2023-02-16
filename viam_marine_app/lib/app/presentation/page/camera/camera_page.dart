import 'package:flutter/material.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/presentation/widgets/app_bar/viam_app_bar.dart';
import 'package:viam_marine/app/presentation/widgets/webrtc_camera_tile/webrtc_camera_tile.dart';
import 'package:viam_marine/app/style/dimens.dart';

class CameraPage extends StatelessWidget {
  final List<ViamAppResourceName> cameraSensors;

  const CameraPage({
    required this.cameraSensors,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: ViamAppBar(title: Strings.of(context).dashboard_camera_title),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Dimens.m),
            child: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(
                  child: SizedBox(height: Dimens.l),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    cameraSensors.map(WebrtcCameraWidget.new).toList(growable: false),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
