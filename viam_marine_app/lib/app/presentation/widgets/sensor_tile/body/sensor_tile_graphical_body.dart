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
            borderRadius: const BorderRadius.all(Radius.circular(Dimens.m)),
            boxShadow: [
              BoxShadow(
                color: context.getColors().shadow,
                blurRadius: 24,
                offset: offset,
              )
            ]),
        padding: const EdgeInsets.all(Dimens.m),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  sensorName,
                  style: AppTypography.label.copyWith(fontSize: Dimens.m),
                ),
                const Spacer(),
                Text(ViamNumberFormats.graphicalSensor.format(currentLevel)),
              ],
            ),
            const SizedBox(height: Dimens.s),
            LinearProgressIndicator(
              value: levelPercentage * 0.01,
              backgroundColor: context.getColors().lightBlue,
              color: context.getColors().blue,
            ),
          ],
        ),
      );

  double get currentLevel => (levelPercentage * capacity * _litersToGallons) / 100.0;
}
