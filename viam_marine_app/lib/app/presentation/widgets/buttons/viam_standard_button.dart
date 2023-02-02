import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:flutter/material.dart';
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
            color: isActive ? context.getColors().blue : context.getColors().mainGrey,
            borderRadius: BorderRadius.circular(Dimens.m),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.l,
            vertical: Dimens.xm,
          ),
          child: isLoading
              ? SizedBox(
            height: 20,
                width: 20,
                child: Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: context.getColors().mainWhite,
                    ),
                  ),
              )
              : Text(
                  title,
                  style: AppTypography.label.copyWith(
                    fontSize: 14,
                    color: isActive ? context.getColors().mainWhite : context.getColors().mainWhite,
                  ),
                  textAlign: TextAlign.center,
                ),
        ),
      );
}

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
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(Dimens.m),
              border: Border.all(color: isActive ? context.getColors().blue : context.getColors().mainGrey)),
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.l,
            vertical: Dimens.xm,
          ),
          child: isLoading
              ? SizedBox(
                  height: 20,
                  width: 20,
                  child: Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: context.getColors().mainWhite,
                    ),
                  ),
                )
              : Text(
                  title,
                  style: AppTypography.label.copyWith(
                    fontSize: 14,
                    color: isActive ? context.getColors().blue : context.getColors().mainGrey,
                  ),
                  textAlign: TextAlign.center,
                ),
        ),
      );
}
