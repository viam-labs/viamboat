import 'package:flutter/material.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/analytics_tile_common_body/analytcis_tile_common_body.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/utils/charts_constants.dart';

class AnalyticsTileErrorBody extends StatelessWidget {
  final String title;
  final String iconPath;
  final bool isChart;
  final VoidCallback? onTap;

  const AnalyticsTileErrorBody({
    super.key,
    this.onTap,
    this.isChart = false,
    required this.title,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) => AnalyticsTileCommonBody(
        title: title,
        iconPath: iconPath,
        onTap: onTap,
        child: SizedBox(
          height: isChart ? ChartsConstants.chartLoadingStateCardHeight : 192,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  Strings.of(context).analytics_tile_error_body_title,
                  textAlign: TextAlign.center,
                  style: AppTypography.body.copyWith(
                    color: context.getColors().grey,
                  ),
                ),
                Text(
                  Strings.of(context).analytics_tile_error_body_refresh,
                  textAlign: TextAlign.center,
                  style: AppTypography.body.copyWith(
                    color: context.getColors().darkBlue1,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
