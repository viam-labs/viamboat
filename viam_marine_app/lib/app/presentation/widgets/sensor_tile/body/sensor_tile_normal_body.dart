part of '../sensor_tile.dart';

const mmsToKts = 0.001943844;
const northValue = 0;
const eastValue = 90;
const southValue = 180;
const westValue = 270;

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
            _getSensorValueString(context),
            style: AppTypography.headline,
          ),
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
    } else {
      return strings.north_west;
    }
  }
}
