import 'package:flutter/material.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/style/app_typography.dart';

class ConfirmationButton extends StatelessWidget with ExtensionMixin {
  final String title;
  final VoidCallback? onTap;
  final bool isActive;

  const ConfirmationButton({
    required this.title,
    this.onTap,
    this.isActive = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) => TextButton(
        onPressed: isActive ? onTap : null,
        style: TextButton.styleFrom(
          foregroundColor: isActive ? context.getColors().mainBlue : context.getColors().mainGrey,
        ),
        child: Text(
          title,
          style: AppTypography.smallTitle,
        ),
      );
}
