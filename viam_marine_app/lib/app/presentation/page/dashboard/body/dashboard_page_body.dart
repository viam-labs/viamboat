import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/assets.gen.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/presentation/widgets/map_tile/map_tile.dart';
import 'package:viam_marine/app/presentation/widgets/sensor_tile/sensor_tile.dart';
import 'package:viam_marine/app/presentation/widgets/webrtc_camera_tile/webrtc_camera_tile.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

part './dashboard_body_card.dart';

const distanceFromTop = 172.0;
const imgHeight = 188.0;

class DashboardPageBody extends StatelessWidget with ExtensionMixin {
  final List<ViamAppResourceName> graphicalSensors;
  final List<ViamAppResourceName> normalSensors;
  final List<ViamAppResourceName> positionSensors;
  final List<ViamAppResourceName> cameraSensors;
  final String boatName;

  const DashboardPageBody({
    required this.graphicalSensors,
    required this.normalSensors,
    required this.positionSensors,
    required this.cameraSensors,
    required this.boatName,
    super.key,
  });

  @override
  Widget build(BuildContext context) => SizedBox(
        height: double.maxFinite,
        child: Stack(
          children: [
            Assets.images.illustrations.placeholder.boatImagePlaceholder.image(
              height: imgHeight,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Positioned.fill(
              top: distanceFromTop,
              child: _DashboardBodyCard(
                boatName: boatName,
                cameraSensors: cameraSensors,
                normalSensors: normalSensors,
                positionSensors: positionSensors,
                graphicalSensors: graphicalSensors,
              ),
            ),
          ],
        ),
      );
}
