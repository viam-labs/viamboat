import 'package:flutter/material.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/generated/assets.gen.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/presentation/page/camera/widgets/webrtc_camera/webrtc_camera_tile.dart';
import 'package:viam_marine/app/presentation/widgets/app_bar/viam_app_bar.dart';
import 'package:viam_marine/app/presentation/widgets/empty_state/empty_state_widget.dart';
import 'package:viam_marine/app/style/dimens.dart';

class CameraPage extends StatelessWidget {
  final List<ViamAppResourceName> cameraSensors;

  const CameraPage({
    required this.cameraSensors,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: ViamAppBar(title: Strings.of(context).camera_page_camera_feed),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Dimens.m),
            child: cameraSensors.isEmpty
                ? EmptyStateWidget(
                    iconPath: Assets.images.svg.icons.cameraEmptyState.path,
                    title: Strings.of(context).camera_empty_state_title,
                    subtitle: Strings.of(context).camera_empty_state_subtitle,
                  )
                : CustomScrollView(
                    slivers: [
                      const SliverToBoxAdapter(
                        child: SizedBox(height: Dimens.l),
                      ),
                      SliverList(
                        delegate: SliverChildListDelegate(
                          cameraSensors.map(WebrtcCameraTile.new).toList(growable: false),
                        ),
                      ),
                    ],
                  ),
          ),
        ),
      );
}
