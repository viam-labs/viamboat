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
        padding: const EdgeInsets.only(top: Dimens.m),
        child: Column(
          children: [
            Expanded(
              child: Wrap(
                runSpacing: Dimens.s,
                spacing: Dimens.s,
                children: sensors.map((e) => const SensorTile()).toList(),
              ),
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
