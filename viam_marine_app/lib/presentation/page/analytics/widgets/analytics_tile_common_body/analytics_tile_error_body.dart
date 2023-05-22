import 'package:flutter/material.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/analytics_tile_common_body/analytcis_tile_common_body.dart';
import 'package:viam_marine/presentation/widgets/error_widget/analytics_error_state_body.dart';
import 'package:viam_marine/style/dimens.dart';
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
          height: isChart ? ChartsConstants.chartLoadingStateCardHeight : Dimens.mapTileHeight,
          child: const Center(
            child: AnalyticsErrorStateBody(),
          ),
        ),
      );
}
