import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

class EmptyStateWidget extends StatelessWidget with ExtensionMixin {
  final String title;
  final String subtitle;
  final String iconPath;

  const EmptyStateWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(iconPath),
            const SizedBox(height: Dimens.xxxl),
            Text(
              title,
              style: AppTypography.titleSemiBold.copyWith(
                color: context.getColors().black,
              ),
            ),
            const SizedBox(height: Dimens.s),
            Text(
              subtitle,
              style: AppTypography.newBody.copyWith(
                color: context.getColors().grey,
              ),
            ),
          ],
        ),
      );
}
