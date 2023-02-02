import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/assets.gen.dart';
import 'package:viam_marine/app/presentation/widgets/map_tile/map_tile.dart';
import 'package:viam_marine/app/presentation/widgets/sensor_tile/sensor_tile.dart';
import 'package:viam_marine/app/presentation/widgets/webrtc_camera_tile/webrtc_camera_tile.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

class DashboardPageBody extends StatelessWidget with ExtensionMixin {
  final List<ViamAppResourceName> graphicalSensors;
  final List<ViamAppResourceName> normalSensors;
  final List<ViamAppResourceName> positionSensors;
  final List<ViamAppResourceName> cameraSensors;

  const DashboardPageBody({
    required this.graphicalSensors,
    required this.normalSensors,
    required this.positionSensors,
    required this.cameraSensors,
    super.key,
  });

  @override
  Widget build(BuildContext context) => SizedBox(
        height: double.maxFinite,
        child: Stack(
          children: [
            Assets.images.illustrations.placeholder.boatImagePlaceholder.image(
              height: 188,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Positioned.fill(
              top: 172,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                  color: context.getColors().mainGrey90,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 24),
                        child: Text(
                          'Boat Name',
                          style: AppTypography.headline,
                        ),
                      ),
                      const SizedBox(height: 32),
                      const Text(
                        'Boat Sensors',
                        style: AppTypography.mediumTitle,
                      ),
                      const SizedBox(height: 16),
                      AlignedGridView.count(
                        padding: EdgeInsets.zero,
                        crossAxisCount: 2,
                        crossAxisSpacing: Dimens.s,
                        mainAxisSpacing: Dimens.s,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: normalSensors.length,
                        itemBuilder: (_, index) => SensorTile(normalSensors[index]),
                      ),
                      const SizedBox(height: Dimens.xl),
                      ListView.separated(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemBuilder: (_, index) => SensorTile(
                          graphicalSensors[index],
                        ),
                        separatorBuilder: (_, __) => const SizedBox(
                          height: Dimens.s,
                        ),
                        itemCount: graphicalSensors.length,
                        physics: const NeverScrollableScrollPhysics(),
                      ),
                      const SizedBox(height: 32),
                      const Text(
                        'GPS Feed',
                        style: AppTypography.mediumTitle,
                      ),
                      const SizedBox(height: 16),
                      ListView.separated(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          final positionSensor = positionSensors[index];
                          return MapTile(positionSensor);
                        },
                        itemCount: positionSensors.length,
                        separatorBuilder: (context, index) => const SizedBox(height: Dimens.m),
                        physics: const NeverScrollableScrollPhysics(),
                      ),
                      const SizedBox(height: 32),
                      const Text(
                        'Camera Feed',
                        style: AppTypography.mediumTitle,
                      ),
                      const SizedBox(height: 16),
                      ListView.separated(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          final cameraSensor = cameraSensors[index];
                          return WebrtcCameraWidget(cameraSensor);
                        },
                        itemCount: cameraSensors.length,
                        separatorBuilder: (context, index) => const SizedBox(height: Dimens.m),
                        physics: const NeverScrollableScrollPhysics(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}

class _DashboardPageBody extends StatelessWidget {
  final List<ViamAppResourceName> sensors;
  final List<ViamAppResourceName> positionSensors;
  final List<ViamAppResourceName> cameraSensors;

  const _DashboardPageBody({
    required this.sensors,
    required this.positionSensors,
    required this.cameraSensors,
    super.key,
  });

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Dimens.m),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AlignedGridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: Dimens.s,
                mainAxisSpacing: Dimens.s,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: sensors.length,
                itemBuilder: (_, index) => SensorTile(sensors[index]),
              ),
              const SizedBox(height: Dimens.m),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final positionSensor = positionSensors[index];
                  return MapTile(positionSensor);
                },
                itemCount: positionSensors.length,
                separatorBuilder: (context, index) => const SizedBox(height: Dimens.m),
                physics: const NeverScrollableScrollPhysics(),
              ),
              const SizedBox(height: Dimens.m),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final cameraSensor = cameraSensors[index];
                  return WebrtcCameraWidget(cameraSensor);
                },
                itemCount: cameraSensors.length,
                separatorBuilder: (context, index) => const SizedBox(height: Dimens.m),
                physics: const NeverScrollableScrollPhysics(),
              ),
            ],
          ),
        ),
      );
}
