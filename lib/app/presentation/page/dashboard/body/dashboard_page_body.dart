import 'package:flutter/material.dart';
import 'package:viam_marine/app/presentation/widgets/sensor_tile/sensor_tile.dart';
import 'package:viam_marine/app/style/dimens.dart';
import 'package:viam_marine/presentation/page/dashboard/widgets/map_tile/map_tile.dart';

class DashboardPageBody extends StatelessWidget {
  final List sensors;

  const DashboardPageBody({
    required this.sensors,
    super.key,
  });

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Dimens.m),
          child: Column(
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
              const SizedBox(
                height: Dimens.m,
              ),
              const MapTile(),
              const SizedBox(
                height: Dimens.m,
              ),
              const Center(
                child: Text('Camera Section'),
              ),
            ],
          ),
        ),
      );
}
