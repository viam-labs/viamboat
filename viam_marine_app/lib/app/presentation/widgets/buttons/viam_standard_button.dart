import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:flutter/material.dart';
import 'package:viam_marine/app/presentation/widgets/loading_indicator/app_loading_indicator.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

class ViamStandardButton extends StatelessWidget with ExtensionMixin {
  final VoidCallback? onTap;
  final bool isActive;
  final String title;
  final bool isLoading;

  const ViamStandardButton({
    required this.isActive,
    required this.title,
    this.onTap,
    this.isLoading = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: isActive && !isLoading ? onTap : null,
        child: Container(
          decoration: BoxDecoration(
            color: isActive ? context.getColors().darkBlue1 : context.getColors().disabledButton,
            borderRadius: BorderRadius.circular(Dimens.m),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.l,
            vertical: Dimens.xm,
          ),
          child: isLoading
              ? AppLoadingIndicator(
                  strokeWidth: 2,
                  color: context.getColors().mainWhite,
                  size: Dimens.ms,
                )
              : Text(
                  title,
                  style: AppTypography.bodyMedium.copyWith(
                    color: isActive ? context.getColors().mainWhite : context.getColors().disabledButtonText,
                  ),
                  textAlign: TextAlign.center,
                ),
        ),
      );
}
