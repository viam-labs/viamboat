import 'package:flutter/material.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/style/dimens.dart';

class MapTile extends StatelessWidget with ExtensionMixin {
  const MapTile({super.key});

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: context.getColors().mainGrey,
          ),
          borderRadius: BorderRadius.circular(Dimens.s),
          color: context.getColors().mainWhite,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _InfoTile(),
            Container(
              height: 290,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(Dimens.s),
                  bottomRight: Radius.circular(Dimens.s),
                ),
                color: context.getColors().mainBlue,
              ),
            ),
          ],
        ),
      );
}

class _InfoTile extends StatelessWidget {
  const _InfoTile({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(Dimens.m),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Boat Location',
              style: AppTypography.mediumTitle,
            ),
            SizedBox(height: Dimens.xs),
            Text(
              '123.0321, 21321.00',
              style: AppTypography.body,
            ),
          ],
        ),
      );
}
