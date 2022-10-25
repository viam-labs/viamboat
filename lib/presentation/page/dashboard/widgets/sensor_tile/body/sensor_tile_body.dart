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
        constraints: const BoxConstraints(minHeight: 88),
        width: 93,
        margin: const EdgeInsets.all(Dimens.xs),
        padding: const EdgeInsets.all(Dimens.s),
        decoration: BoxDecoration(
          color: context.getColors().white,
          border: Border.all(color: context.getColors().border),
          borderRadius: BorderRadius.circular(Dimens.s),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: AppTypography.label,
            ),
            Text(
              value,
              style: AppTypography.headline,
            ),
          ],
        ),
      );
}
