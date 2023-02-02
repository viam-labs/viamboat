part of '../sensor_tile.dart';

const mmsToKts = 514.44444444444;
const northValue = 0;
const eastValue = 90;
const southValue = 180;
const westValue = 270;
const maxValue = 360;
const offset = Offset(0, 2);

class _SensorTileNormalBody extends StatelessWidget with ExtensionMixin {
  final String sensorName;
  final double value;

  const _SensorTileNormalBody({
    required this.sensorName,
    required this.value,
  });

  @override
  Widget build(BuildContext context) => CommonSensorBody(
        padding: const EdgeInsets.symmetric(vertical: Dimens.s, horizontal: Dimens.m),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              sensorName,
              overflow: TextOverflow.ellipsis,
              style: AppTypography.newBody.copyWith(
                color: context.getColors().grey,
              ),
            ),
            Text(
              _getSensorValueString(context),
              style: AppTypography.bodyMedium.copyWith(
                color: context.getColors().black,
              ),
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

  double get _speedInKts => value / mmsToKts;

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
