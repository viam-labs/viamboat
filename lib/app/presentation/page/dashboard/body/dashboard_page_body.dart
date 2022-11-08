import 'package:flutter/material.dart';
import 'package:viam_marine/app/presentation/widgets/camera_tile/camera_tile.dart';
import 'package:viam_marine/app/presentation/widgets/map_tile/map_tile.dart';
import 'package:viam_marine/app/presentation/widgets/sensor_tile/sensor_tile.dart';
import 'package:viam_marine/app/style/dimens.dart';

class DashboardPageBody extends StatelessWidget {
  final List sensors;
  final List positionSensors;

  const DashboardPageBody({
    required this.sensors,
    required this.positionSensors,
    super.key,
  });

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Dimens.m),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: Dimens.s,
                  mainAxisSpacing: Dimens.s,
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: sensors.map((sensorName) => SensorTile(sensorName)).toList(growable: false),
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
              const CameraTile(),
            ],
          ),
        ),
      );
}
