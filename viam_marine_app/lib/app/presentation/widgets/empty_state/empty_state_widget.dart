import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/presentation/widgets/buttons/viam_standard_button.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

class EmptyStateWidget extends StatelessWidget with ExtensionMixin {
  final String title;
  final String subtitle;
  final String iconPath;
  final VoidCallback? onTap;

  const EmptyStateWidget({
    super.key,
    this.onTap,
    required this.title,
    required this.subtitle,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (onTap != null) const Spacer(),
            SvgPicture.asset(iconPath),
            const SizedBox(height: Dimens.xxxl),
            Text(
              title,
              textAlign: TextAlign.center,
              style: AppTypography.titleSemiBold.copyWith(
                color: context.getColors().black,
              ),
            ),
            const SizedBox(height: Dimens.s),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: AppTypography.newBody.copyWith(
                color: context.getColors().grey,
              ),
            ),
            if (onTap != null) ...[
              const Spacer(),
              ViamStandardButton(
                isActive: true,
                title: Strings.of(context).retry,
                onTap: onTap,
              ),
              const SizedBox(height: Dimens.l),
            ]
          ],
        ),
      );
}
