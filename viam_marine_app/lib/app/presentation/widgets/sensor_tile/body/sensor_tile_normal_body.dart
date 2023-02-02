part of '../sensor_tile.dart';

const mmsToKts = 0.001943844;
const northValue = 0;
const eastValue = 90;
const southValue = 180;
const westValue = 270;
const maxValue = 360;

class _SensorTileNormalBody extends StatelessWidget with ExtensionMixin {
  final String sensorName;
  final double value;

  const _SensorTileNormalBody({
    required this.sensorName,
    required this.value,
  });

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: context.getColors().mainWhite,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              sensorName,
              style: AppTypography.label.copyWith(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              _getSensorValueString(context),
              style: AppTypography.body.copyWith(fontSize: 16),
            ),
          ],
        ),
      );

  String _getSensorValueString(BuildContext context) {
    final strings = Strings.of(context);
    if (sensorName == strings.sensor_name_heading) {
      return _getHeading(context);
    } else if (sensorName == strings.sensor_name_speed) {
      return _formatSensorValue(_speedInKts);
    } else {
      return _formatSensorValue(value);
    }
  }

  String _formatSensorValue(double val) => ViamNumberFormats.sensor.format(val);

  double get _speedInKts => value * mmsToKts;

  String _getHeading(BuildContext context) {
    final strings = Strings.of(context);
    if (value == northValue) {
      return strings.north;
    } else if (value < eastValue) {
      return strings.north_east;
    } else if (value == eastValue) {
      return strings.east;
    } else if (value < southValue) {
      return strings.south_east;
    } else if (value == southValue) {
      return strings.south;
    } else if (value < westValue) {
      return strings.south_west;
    } else if (value == westValue) {
      return strings.west;
    } else if (value < maxValue) {
      return strings.north_west;
    } else {
      return '';
    }
  }
}
