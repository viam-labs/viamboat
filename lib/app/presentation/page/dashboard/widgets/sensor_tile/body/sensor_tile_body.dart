part of '../sensor_tile.dart';

class _SensorTileBody extends StatelessWidget with ExtensionMixin {
  final String title;
  final double value;
  final bool isGraphicalSensor;

  const _SensorTileBody({
    required this.title,
    required this.value,
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
                          mainLabelStyle: AppTypography.smallTitle,
                        ),
                        customColors: CustomSliderColors(
                          progressBarColor: context.getColors().mainBlue,
                          dotColor: context.getColors().mainBlue,
                          trackColor: context.getColors().mainGrey80,
                        ),
                      ),
                      initialValue: value,
                    ),
                  )
                : Expanded(
                    flex: 2,
                    child: Text(
                      ViamNumberFormats.sensor.format(value),
                      style: AppTypography.headline,
                    ),
                  ),
          ],
        ),
      );
}
