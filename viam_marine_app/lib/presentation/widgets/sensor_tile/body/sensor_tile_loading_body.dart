part of '../sensor_tile.dart';

class _SensorTileLoadingBody extends StatelessWidget {
  const _SensorTileLoadingBody();

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
        baseColor: context.getColors().mainWhite,
        highlightColor: context.getColors().shimmerHighlightColor,
        child: const _SensorTileNormalBody(
          sensorName: '',
          value: 0.0,
        ),
      );
}
