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
  Widget build(BuildContext context) => Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(Dimens.xm),
              child: Wrap(
                children: sensors.map((e) => const SensorTile()).toList(),
              ),
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
      );
}
