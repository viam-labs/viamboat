import 'package:flutter/material.dart';
import 'package:viam_marine/presentation/page/dashboard/widgets/sensor_tile/sensor_tile.dart';
import 'package:viam_marine/style/dimens.dart';

class DashboardPageBody extends StatelessWidget {
  final List sensors;

  const DashboardPageBody({
    required this.sensors,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Padding(
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
              children: sensors.map((e) => const SensorTile()).toList(growable: false),
            ),
            const Expanded(
              child: Center(
                child: Text('GPS Section'),
              ),
            ),
            const Expanded(
              child: Center(
                child: Text('Camera Section'),
              ),
            ),
          ],
        ),
      );
}
