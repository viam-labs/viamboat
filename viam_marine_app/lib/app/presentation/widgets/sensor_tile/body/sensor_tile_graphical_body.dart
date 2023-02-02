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
        padding: const EdgeInsets.all(Dimens.m),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '$sensorName (gal)',
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.newBody.copyWith(
                    color: context.getColors().grey,
                  ),
                ),
                const Spacer(),
                Text(
                  ViamNumberFormats.graphicalSensor.format(currentLevel),
                  style: AppTypography.bodyMedium.copyWith(
                    color: context.getColors().black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: Dimens.s),
            LinearProgressIndicator(
              value: currentValue,
              backgroundColor: context.getColors().lightBlue,
              color: context.getColors().blue,
            ),
          ],
        ),
      );

  double get currentValue => levelPercentage * 0.01;

  double get currentLevel => (levelPercentage * capacity * _litersToGallons) / 100.0;
}
