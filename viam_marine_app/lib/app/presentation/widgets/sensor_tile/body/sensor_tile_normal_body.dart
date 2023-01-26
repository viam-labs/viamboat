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
        sensorBodyType: Padding(
          padding: const EdgeInsets.only(top: Dimens.m),
          child: Text(
            sensorName.contains('Heading') ? heading : ViamNumberFormats.sensor.format(value),
            style: AppTypography.headline,
          ),
        ),
      );

  String get heading {
    if (value == 0) {
      return 'N';
    } else if (value < 90) {
      return 'NE';
    } else if (value == 90) {
      return 'E';
    } else if (value > 90 && value < 180) {
      return 'SE';
    } else if (value == 180) {
      return 'S';
    } else if (value > 180 && value < 270) {
      return 'SW';
    } else if (value == 270) {
      return 'W';
    } else {
      return 'NW';
    }
  }
}
