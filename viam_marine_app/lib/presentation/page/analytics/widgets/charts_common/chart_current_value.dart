import 'package:flutter/material.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/style/dimens.dart';

class ChartCurrentValue extends StatelessWidget with ExtensionMixin {
  final String formattedValueText;

  const ChartCurrentValue({
    required this.formattedValueText,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(
          left: Dimens.s,
          top: Dimens.l,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              Strings.of(context).depth_over_time_chart_tile_current,
              style: AppTypography.body.copyWith(
                color: context.getColors().black,
              ),
            ),
            const SizedBox(width: Dimens.s),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: Dimens.xxs,
                horizontal: Dimens.xxs + Dimens.s,
              ),
              decoration: BoxDecoration(
                color: context.getColors().blue,
                borderRadius: BorderRadius.circular(Dimens.xs + Dimens.xxs),
              ),
              child: Text(
                formattedValueText,
                style: AppTypography.body.copyWith(
                  color: context.getColors().mainWhite,
                ),
              ),
            )
          ],
        ),
      );
}
