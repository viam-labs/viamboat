import 'package:flutter/material.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/style/app_typography.dart';

class ConfirmationButton extends StatelessWidget with ExtensionMixin {
  final String title;
  final VoidCallback? onTap;

  const ConfirmationButton({
    required this.title,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) => TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          foregroundColor: context.getColors().mainBlue,
        ),
        child: Text(
          title,
          style: AppTypography.smallTitle,
        ),
      );
}
