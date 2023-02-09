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

  static const _litersToGallons = 0.26417;

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
              mainLabelStyle: AppTypography.newBody,
            ),
            customColors: CustomSliderColors(
              progressBarColor: _isWarning ? context.getColors().orange : context.getColors().blue,
              dotColor: _isWarning ? context.getColors().orange : context.getColors().blue,
              trackColor: _isWarning ? context.getColors().mainWhite : context.getColors().lightBlue,
            ),
          ),
          initialValue: levelPercentage,
        ),
      );

  double get currentValue => levelPercentage * 0.01;

  double get currentLevel => (levelPercentage * capacity * _litersToGallons) / 100.0;

  bool get _isWarning => error == ViamError.warning;
}
