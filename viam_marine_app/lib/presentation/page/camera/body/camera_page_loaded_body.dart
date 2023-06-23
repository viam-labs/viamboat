import 'package:flutter/material.dart';
import 'package:viam_marine/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/camera/widgets/webrtc_camera/webrtc_camera_tile.dart';
import 'package:viam_marine/presentation/widgets/empty_state/empty_state_widget.dart';
import 'package:viam_marine/style/dimens.dart';

class CameraPageLoadedBody extends StatelessWidget {
  final List<ViamAppResourceName> cameraSensors;

  const CameraPageLoadedBody({
    super.key,
    required this.cameraSensors,
  });

  @override
  Widget build(BuildContext context) => Padding(
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
      );
}
