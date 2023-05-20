import 'package:flutter/material.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/style/dimens.dart';

class MapFilterButton extends StatelessWidget with ExtensionMixin {
  final VoidCallback? onTap;

  const MapFilterButton({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) => Positioned.fill(
        top: Dimens.ms,
        child: Align(
          alignment: Alignment.topCenter,
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: onTap,
            child: Container(
              decoration: BoxDecoration(
                color: context.getColors().mainWhite,
                borderRadius: BorderRadius.circular(Dimens.m),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: Dimens.xm,
                  horizontal: Dimens.xxxl + Dimens.xxs,
                ),
                child: Text(
                  Strings.of(context).water_depth_screen_filters,
                  style: AppTypography.bodyMedium.copyWith(
                    color: context.getColors().darkBlue1,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
