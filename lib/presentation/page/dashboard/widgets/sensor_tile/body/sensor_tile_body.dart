part of '../sensor_tile.dart';

class _SensorTileBody extends StatelessWidget {
  final String title;
  final String value;

  const _SensorTileBody({
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) => Container(
        width: 93,
        height: 88,
        margin: const EdgeInsets.all(Dimens.xs),
        padding: const EdgeInsets.all(Dimens.s),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(Dimens.s),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
            ),
            Text(
              value,
              style: TextStyle(fontSize: 23),
            ),
          ],
        ),
      );
}
