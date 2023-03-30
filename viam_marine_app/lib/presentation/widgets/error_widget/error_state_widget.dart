import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/widgets/buttons/viam_standard_button.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/style/dimens.dart';

class ErrorStateWidget extends StatelessWidget with ExtensionMixin {
  final String iconPath;
  final String title;
  final String subtitle;
  final VoidCallback? onTap;
  final bool? isLoading;
  final String? buttonText;

  const ErrorStateWidget({
    super.key,
    required this.iconPath,
    required this.title,
    required this.subtitle,
    this.onTap,
    this.isLoading,
    this.buttonText,
  });

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(Dimens.m),
        width: double.infinity,
        child: Column(
          children: [
            const Spacer(),
            SvgPicture.asset(iconPath),
            Text(
              title,
              style: AppTypography.titleSemiBold.copyWith(
                color: context.getColors().black,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              subtitle,
              style: AppTypography.body.copyWith(
                color: context.getColors().grey,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            ViamStandardButton(
              isActive: true,
              isLoading: isLoading ?? false,
              title: buttonText ?? Strings.of(context).try_again,
              onTap: onTap,
            ),
          ],
        ),
      );
}
