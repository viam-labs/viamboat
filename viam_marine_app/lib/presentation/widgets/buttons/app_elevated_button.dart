import 'package:flutter/material.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/style/dimens.dart';

class AppElevatedButton extends StatelessWidget with ExtensionMixin {
  final VoidCallback? onTap;
  final String title;

  const AppElevatedButton({
    required this.title,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: context.getColors().darkBlue1,
            borderRadius: const BorderRadius.all(
              Radius.circular(Dimens.xm),
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: Dimens.m),
          width: double.infinity,
          child: Center(
            child: Text(
              title,
              style: AppTypography.bodyMedium.copyWith(
                color: context.getColors().mainWhite,
              ),
            ),
          ),
        ),
      );
}
