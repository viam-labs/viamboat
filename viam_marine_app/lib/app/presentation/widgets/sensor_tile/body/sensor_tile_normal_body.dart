part of '../sensor_tile.dart';

const mmsToKts = 514.44444444444;
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
        sensorName: sensorName,
        sensorBodyType: Padding(
          padding: const EdgeInsets.only(top: Dimens.m),
          child: Text(
            _getSensorValueString(context),
            style: AppTypography.headline.copyWith(
              color: context.getColors().black,
            ),
          ),
        ),
      );

  String _getSensorValueString(BuildContext context) {
    final strings = Strings.of(context);
    if (sensorName == strings.sensor_name_heading) {
      return _formatSensorValue(value);
    } else if (sensorName == strings.sensor_name_speed) {
      return _formatSensorValue(_speedInKts);
    } else {
      return _formatSensorValue(value);
    }
  }

  String _formatSensorValue(double val) => ViamNumberFormats.sensor.format(val);

  double get _speedInKts => value / mmsToKts;
}
