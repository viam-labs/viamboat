part of '../common_tile_body.dart';

class _CommonTileBodyTopInfo extends StatelessWidget {
  final String title;
  final String? subtitle;

  const _CommonTileBodyTopInfo(
    this.title,
    this.subtitle,
  );

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(Dimens.m),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTypography.mediumTitle,
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
      );
}
