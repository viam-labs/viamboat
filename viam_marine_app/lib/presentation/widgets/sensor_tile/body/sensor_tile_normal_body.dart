part of '../sensor_tile.dart';

const metersToKnots = 1.9438444924406;
const offset = Offset(0, 2);

class _SensorTileNormalBody extends StatelessWidget with ExtensionMixin {
  final String sensorName;
  final double value;
  final ViamError? error;

  const _SensorTileNormalBody({
    required this.sensorName,
    required this.value,
    this.error,
  });

  @override
  Widget build(BuildContext context) => CommonSensorBody(
        sensorName: _getFormattedSensorName(context),
        error: error,
        sensorBodyType: Text(
          _getSensorValueString(context),
          style: AppTypography.bodyMedium.copyWith(
            color: context.getColors().black,
          ),
        ),
      );

  String _getFormattedSensorName(BuildContext context) =>
      sensorName.contains('depth') ? Strings.of(context).sensor_name_depth(sensorName) : sensorName;

  String _getSensorValueString(BuildContext context) =>
      sensorName == Strings.of(context).sensor_name_speed ? _formatSensorValue(_speedInKts) : _formatSensorValue(value);

  String _formatSensorValue(double val) => ViamNumberFormats.sensor.format(val);

  double get _speedInKts => value * metersToKnots;
}
