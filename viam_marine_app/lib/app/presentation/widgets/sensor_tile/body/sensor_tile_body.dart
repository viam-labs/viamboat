part of '../sensor_tile.dart';

class _SensorTileBody extends StatelessWidget with ExtensionMixin {
  final String title;
  final double level;
  final double actualValue;
  final bool isGraphicalSensor;

  const _SensorTileBody({
    required this.title,
    required this.level,
    required this.actualValue,
    required this.isGraphicalSensor,
  });

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(Dimens.s),
        decoration: BoxDecoration(
          color: context.getColors().mainWhite,
          border: Border.all(color: context.getColors().mainGrey),
          borderRadius: BorderRadius.circular(Dimens.s),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                title,
                style: AppTypography.label,
              ),
            ),
            isGraphicalSensor
                ? Expanded(
                    flex: 2,
                    child: SleekCircularSlider(
                      appearance: CircularSliderAppearance(
                        animationEnabled: false,
                        customWidths: CustomSliderWidths(
                          progressBarWidth: Dimens.xxs,
                          handlerSize: Dimens.xs,
                          trackWidth: Dimens.xxs,
                        ),
                        infoProperties: InfoProperties(
                          modifier: (_) => ViamNumberFormats.graphicalSensor.format(actualValue),
                          mainLabelStyle: AppTypography.smallTitle,
                        ),
                        customColors: CustomSliderColors(
                          progressBarColor: context.getColors().mainBlue,
                          dotColor: context.getColors().mainBlue,
                          trackColor: context.getColors().mainGrey80,
                        ),
                      ),
                      initialValue: level,
                    ),
                  )
                : Expanded(
                    flex: 2,
                    child: Text(
                      ViamNumberFormats.sensor.format(level),
                      style: AppTypography.headline,
                    ),
                  ),
          ],
        ),
      );
}
