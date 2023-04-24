import 'package:flutter/material.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/analytics_tile_common_body/analytcis_tile_common_body.dart';
import 'package:viam_marine/presentation/widgets/loading_indicator/app_loading_indicator.dart';
import 'package:viam_marine/utils/charts_constants.dart';

class FuelConsumptionPerMileLoadingBody extends StatelessWidget {
  const FuelConsumptionPerMileLoadingBody({super.key});

  @override
  Widget build(BuildContext context) => AnalyticsTileCommonBody(
        title: Strings.of(context).fuel_consumption_per_mile_chart_tile_title,
        iconPath: Assets.images.svg.icons.fuel.path,
        child: const SizedBox(
          height: ChartsConstants.chartLoadingStateCardHeight,
          child: Center(
            child: AppLoadingIndicator(),
          ),
        ),
      );
}
