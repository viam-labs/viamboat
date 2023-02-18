import 'package:flutter/material.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/presentation/widgets/loading_indicator/app_loading_indicator.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

class ViamOutlinedButton extends StatelessWidget with ExtensionMixin {
  final VoidCallback? onTap;
  final bool isActive;
  final String title;
  final bool isLoading;

  const ViamOutlinedButton({
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
            color: context.getColors().transparent,
            borderRadius: BorderRadius.circular(Dimens.m),
            border: Border.all(
              color: isActive ? context.getColors().lightBlue1 : context.getColors().mainGrey,
            ),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.l,
            vertical: Dimens.xm,
          ),
          child: isLoading
              ? SizedBox(
                  height: Dimens.ms,
                  width: Dimens.ms,
                  child: AppLoadingIndicator(
                    strokeWidth: 2,
                    color: context.getColors().mainWhite,
                  ),
                )
              : Text(
                  title,
                  style: AppTypography.bodyMedium.copyWith(
                    color: isActive ? context.getColors().lightBlue1 : context.getColors().mainGrey,
                  ),
                  textAlign: TextAlign.center,
                ),
        ),
      );
}
