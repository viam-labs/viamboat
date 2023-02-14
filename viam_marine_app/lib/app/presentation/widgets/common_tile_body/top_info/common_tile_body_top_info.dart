part of '../common_tile_body.dart';

class _CommonTileBodyTopInfo extends StatelessWidget {
  final String title;
  final String? subtitle;
  final ViamError? error;

  const _CommonTileBodyTopInfo(
    this.title,
    this.subtitle,
    this.error,
  );

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(Dimens.m),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTypography.newBody.copyWith(
                    color: context.getColors().grey,
                  ),
                ),
                if (subtitle != null) ...[
                  const SizedBox(height: Dimens.xs),
                  Text(
                    subtitle!,
                    style: AppTypography.body,
                  ),
                ]
              ],
            ),
            const Spacer(),
            if (error != null) SvgPicture.asset(_errorIconPath),
          ],
        ),
      );

  String get _errorIconPath =>
      error!.isError ? Assets.images.svg.icons.error.path : Assets.images.svg.icons.warning.path;
}
