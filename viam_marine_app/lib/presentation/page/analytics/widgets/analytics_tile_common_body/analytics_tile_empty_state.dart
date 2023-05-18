import 'package:flutter/material.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/style/dimens.dart';
import 'package:viam_marine/utils/charts_constants.dart';

class AnalyticsTileEmptyState extends StatelessWidget with ExtensionMixin {
  final bool isChart;

  const AnalyticsTileEmptyState({
    super.key,
    this.isChart = false,
  });

  @override
  Widget build(BuildContext context) => SizedBox(
        height: isChart ? ChartsConstants.chartHeight : Dimens.mapTileHeight,
        child: Center(
          child: Text(
            Strings.of(context).analytics_tile_empty_state,
            textAlign: TextAlign.center,
            style: AppTypography.body.copyWith(
              color: context.getColors().grey,
            ),
          ),
        ),
      );
}
