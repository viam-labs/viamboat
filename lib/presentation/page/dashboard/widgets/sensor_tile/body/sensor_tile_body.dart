part of '../sensor_tile.dart';

class _SensorTileBody extends StatelessWidget with ExtensionMixin {
  final String title;
  final String value;

  const _SensorTileBody({
    required this.title,
    required this.value,
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
          crossAxisAlignment: CrossAxisAlignment.center,
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
