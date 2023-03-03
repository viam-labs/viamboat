part of '../common_tile_body.dart';

class _CommonTileBodyTopInfo extends StatelessWidget {
  final String title;
  final ViamError? error;
  final String? subtitle;

  const _CommonTileBodyTopInfo(
    this.title,
    this.error,
    this.subtitle,
  );

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: Dimens.m, right: Dimens.m, top: Dimens.m),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    style: AppTypography.newBody.copyWith(
                      color: context.getColors().black,
                    ),
                  ),
                ),
                const SizedBox(width: Dimens.s),
                SvgPicture.asset(_iconPath),
              ],
            ),
            if (subtitle != null)
              Text(
                subtitle!,
                overflow: TextOverflow.ellipsis,
                style: AppTypography.bodySmall.copyWith(color: context.getColors().grey),
              ),
          ],
        ),
      );

  String get _iconPath {
    if (error != null) {
      return error!.isError ? Assets.images.svg.icons.error.path : Assets.images.svg.icons.warning.path;
    } else {
      return Assets.images.svg.icons.liveBadge.path;
    }
  }
}
