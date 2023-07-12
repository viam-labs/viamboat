part of '../sensor_tile.dart';

class _SensorTileGraphicalBody extends StatelessWidget with ExtensionMixin {
  final String sensorName;
  final double levelPercentage;
  final double capacity;
  final ViamError? error;

  const _SensorTileGraphicalBody({
    required this.sensorName,
    required this.levelPercentage,
    required this.capacity,
    this.error,
  });

  @override
  Widget build(BuildContext context) => CommonSensorBody(
        error: error,
        sensorName: Strings.of(context).graphical_sensor_name(sensorName),
        sensorBodyType: SleekCircularSlider(
          appearance: CircularSliderAppearance(
            size: Dimens.xc,
            animationEnabled: false,
            customWidths: CustomSliderWidths(
              progressBarWidth: Dimens.xxs,
              handlerSize: Dimens.xs,
              trackWidth: Dimens.xxs,
            ),
            infoProperties: InfoProperties(
              modifier: (_) => ViamNumberFormats.graphicalSensor.format(
                currentLevel,
              ),
              mainLabelStyle: AppTypography.body,
            ),
            customColors: CustomSliderColors(
              progressBarColor: _getColor(context),
              dotColor: _getColor(context),
              trackColor: _getColor(context, true),
            ),
          ),
          initialValue: levelPercentage,
        ),
      );

  double get currentValue => levelPercentage * 0.01;

  double get currentLevel => (levelPercentage * capacity * ViamConstants.litersToGallons) / 100.0;

  Color _getColor(BuildContext context, [bool isTrackColor = false]) {
    final colors = context.getColors();
    if (error?.isWarning ?? false) {
      return isTrackColor ? colors.mainWhite : colors.orange;
    } else if (error?.isError ?? false) {
      return isTrackColor ? colors.mainWhite : colors.red;
    } else {
      return isTrackColor ? colors.lightBlue : colors.blue;
    }
  }
}
