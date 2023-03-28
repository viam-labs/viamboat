import 'package:flutter/material.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/widgets/buttons/confirmation_button.dart';
import 'package:viam_marine/style/app_typography.dart';

class ViamDialog extends StatelessWidget with ExtensionMixin {
  final String title;
  final String content;
  final VoidCallback? onConfirmTap;
  final VoidCallback? onDismissTap;

  const ViamDialog({
    required this.title,
    required this.content,
    this.onConfirmTap,
    this.onDismissTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) => AlertDialog(
        title: Text(
          title,
          textAlign: TextAlign.center,
          style: AppTypography.body.copyWith(
            fontWeight: FontWeight.w600,
            color: context.getColors().black,
          ),
        ),
        content: Text(
          content,
          textAlign: TextAlign.center,
          style: AppTypography.body.copyWith(
            color: context.getColors().black,
          ),
        ),
        actions: [
          ConfirmationButton(
            title: Strings.of(context).yes,
            onTap: onConfirmTap,
          ),
          ConfirmationButton(
            title: Strings.of(context).no,
            onTap: onDismissTap,
          ),
        ],
      );
}
