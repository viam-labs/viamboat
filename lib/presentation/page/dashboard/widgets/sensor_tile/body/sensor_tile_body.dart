part of '../sensor_tile.dart';

class _SensorTileBody extends StatelessWidget with ExtensionMixin {
  final String title;
  final String value;
  final bool isGauge;

  const _SensorTileBody({
    required this.title,
    required this.value,
    required this.isGauge,
  });

  @override
  Widget build(BuildContext context) => Container(
        padding: isGauge
            ? const EdgeInsets.all(Dimens.s)
            : const EdgeInsets.only(
                left: Dimens.s,
                top: Dimens.s,
                right: Dimens.s,
              ),
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
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: AppTypography.label,
              ),
            ),
            if (isGauge)
              Expanded(
                flex: 2,
                child: SleekCircularSlider(
                  appearance: CircularSliderAppearance(
                    animationEnabled: false,
                    customWidths: CustomSliderWidths(
                      progressBarWidth: 3,
                      handlerSize: 4,
                      trackWidth: 3,
                    ),
                    infoProperties: InfoProperties(
                      mainLabelStyle: AppTypography.title.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    customColors: CustomSliderColors(
                      progressBarColor: context.getColors().mainBlue,
                      dotColor: context.getColors().mainBlue,
                      trackColor: context.getColors().mainGrey80,
                    ),
                  ),
                  max: 100,
                  min: 0,
                  initialValue: double.parse(value),
                ),
              ),
            if (!isGauge)
              Expanded(
                child: Text(
                  value,
                  style: AppTypography.headline,
                ),
              ),
          ],
        ),
      );
}
