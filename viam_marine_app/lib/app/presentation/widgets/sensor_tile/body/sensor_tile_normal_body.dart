part of '../sensor_tile.dart';

class _SensorTileNormalBody extends StatelessWidget with ExtensionMixin {
  final String sensorName;
  final double value;

  const _SensorTileNormalBody({
    required this.sensorName,
    required this.value,
  });

  @override
  Widget build(BuildContext context) => CommonSensorBody(
        sensorName: sensorName,
        sensorBodyType: Text(
          ViamNumberFormats.sensor.format(value),
          style: AppTypography.headline,
        ),
      );
}
