part of '../sensor_tile.dart';

const mmsToKts = 514.44444444444;
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
        sensorName: sensorName,
        error: error,
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

  String _getSensorValueString(BuildContext context) =>
      sensorName == Strings.of(context).sensor_name_speed ? _formatSensorValue(_speedInKts) : _formatSensorValue(value);

  String _formatSensorValue(double val) => ViamNumberFormats.sensor.format(val);

  double get _speedInKts => value / mmsToKts;
}
