import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:flutter/material.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

class LogInButton extends StatelessWidget with ExtensionMixin {
  final VoidCallback? onTap;
  final bool isActive;

  const LogInButton({
    required this.isActive,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: isActive ? onTap : null,
        child: Container(
          decoration: BoxDecoration(
            color: isActive ? context.getColors().mainLightBlue : context.getColors().mainGrey80,
            borderRadius: BorderRadius.circular(Dimens.xs),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.l,
            vertical: Dimens.xm,
          ),
          child: Text(
            Strings.of(context).log_in,
            style: AppTypography.label.copyWith(
              fontSize: 14,
              color: isActive ? context.getColors().mainWhite : context.getColors().mainGrey,
            ),
          ),
        ),
      );
}
