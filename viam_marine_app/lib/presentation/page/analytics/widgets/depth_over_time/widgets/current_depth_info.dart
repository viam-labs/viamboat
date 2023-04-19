import 'package:flutter/material.dart';
import 'package:viam_marine/domain/data_viam/model/depth_over_time.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/style/dimens.dart';
import 'package:viam_marine/style/number_formats.dart';

class CurrentDepthInfo extends StatelessWidget with ExtensionMixin {
  final DepthOverTime depthOverTime;

  const CurrentDepthInfo({
    super.key,
    required this.depthOverTime,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(
          left: Dimens.s,
          top: Dimens.l,
          bottom: Dimens.xm,
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
                _getCurrentDepthString(context),
                style: AppTypography.body.copyWith(
                  color: context.getColors().mainWhite,
                ),
              ),
            )
          ],
        ),
      );

  String _getCurrentDepthString(BuildContext context) => Strings.of(context).depth_over_time_chart_tile_current_depth(
        ViamNumberFormats.sensor.format((depthOverTime.depth)),
      );
}
