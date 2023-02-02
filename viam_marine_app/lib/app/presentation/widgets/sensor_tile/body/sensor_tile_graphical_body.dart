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
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: context.getColors().mainWhite,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  sensorName,
                  style: AppTypography.label.copyWith(fontSize: 16),
                ),
                Spacer(),
                Text(ViamNumberFormats.graphicalSensor.format(currentLevel)),
              ],
            ),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              value: levelPercentage * 0.01,
              backgroundColor: Colors.lightBlue[100],
              color: Colors.lightBlue,
            ),
          ],
        ),
      );
  // CommonSensorBody(
  //       sensorName: sensorName,
  //       sensorBodyType: SleekCircularSlider(
  //         appearance: CircularSliderAppearance(
  //           size: Dimens.xc,
  //           animationEnabled: false,
  //           customWidths: CustomSliderWidths(
  //             progressBarWidth: Dimens.xxs,
  //             handlerSize: Dimens.xs,
  //             trackWidth: Dimens.xxs,
  //           ),
  //           infoProperties: InfoProperties(
  //             modifier: (_) => ViamNumberFormats.graphicalSensor.format(
  //               currentLevel,
  //             ),
  //             mainLabelStyle: AppTypography.smallTitle,
  //           ),
  //           customColors: CustomSliderColors(
  //             progressBarColor: context.getColors().mainBlue,
  //             dotColor: context.getColors().mainBlue,
  //             trackColor: context.getColors().mainGrey80,
  //           ),
  //         ),
  //         initialValue: levelPercentage,
  //       ),
  //     );

  double get currentLevel => (levelPercentage * capacity * _litersToGallons) / 100.0;
}
