import 'package:flutter/material.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/style/dimens.dart';

class MapPopupText extends StatelessWidget with ExtensionMixin {
  final String firstText;
  final String secondText;

  const MapPopupText({
    super.key,
    required this.firstText,
    required this.secondText,
  });

  @override
  Widget build(BuildContext context) => Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            firstText,
            style: AppTypography.bodySmall.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(width: Dimens.xs),
          Text(
            secondText,
            style: AppTypography.bodySmall.copyWith(
              color: context.getColors().blue,
            ),
          ),
        ],
      );
}
