part of '../sensor_tile.dart';

class _SensorTileGraphicalBody extends StatelessWidget with ExtensionMixin {
  final String sensorName;
  final double levelPercentage;
  final double capacity;

  const _SensorTileGraphicalBody({
    required this.sensorName,
    required this.levelPercentage,
    required this.capacity,
  });

  static const _litersToGallons = 0.26417;

  @override
  Widget build(BuildContext context) => CommonSensorBody(
        sensorName: sensorName,
        sensorBodyType: SleekCircularSlider(
          appearance: CircularSliderAppearance(
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
              mainLabelStyle: AppTypography.smallTitle,
            ),
            customColors: CustomSliderColors(
              progressBarColor: context.getColors().mainBlue,
              dotColor: context.getColors().mainBlue,
              trackColor: context.getColors().mainGrey80,
            ),
          ),
          initialValue: levelPercentage,
        ),
      );

  double get currentLevel => (levelPercentage * capacity * _litersToGallons) / 100.0;
}
