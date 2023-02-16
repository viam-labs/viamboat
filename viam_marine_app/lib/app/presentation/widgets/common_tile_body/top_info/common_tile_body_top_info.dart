part of '../common_tile_body.dart';

class _CommonTileBodyTopInfo extends StatelessWidget {
  final String title;
  final ViamError? error;

  const _CommonTileBodyTopInfo(
    this.title,
    this.error,
  );

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(Dimens.m),
        child: Row(
          children: [
            Text(
              title,
              style: AppTypography.newBody.copyWith(
                color: context.getColors().black,
              ),
            ),
            const Spacer(),
            SvgPicture.asset(_iconPath),
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
