import 'package:flutter/material.dart';
import 'package:viam_marine/presentation/page/analytics/cubit/analytics_cubit.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/depth_over_time/depth_over_time_tile.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_per_mile/fuel_consumption_per_mile_tile.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_over_time/fuel_consumption_over_time_tile.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/water_depth/water_depth_tile.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/water_temperature/water_temperature_tile.dart';
import 'package:viam_marine/style/dimens.dart';

class AnalyticsLoadedBody extends StatelessWidget {
  final List<AnalyticsType> analyticsTypes;

  const AnalyticsLoadedBody({
    super.key,
    required this.analyticsTypes,
  });

  @override
  Widget build(BuildContext context) => ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: Dimens.s),
        itemBuilder: _mapAnalyticsTypeToTile,
        separatorBuilder: (_, __) => const SizedBox(height: Dimens.m),
        itemCount: analyticsTypes.length,
      );

  Widget _mapAnalyticsTypeToTile(BuildContext context, int index) {
    final AnalyticsType analyticsType = analyticsTypes[index];

    switch (analyticsType) {
      case AnalyticsType.waterTemperature:
        return const WaterTemperatureTile();
      case AnalyticsType.waterDepth:
        return const WaterDepthTile();
      case AnalyticsType.fuelConsumptionPerMile:
        return const FuelConsumptionPerMileTile();
      case AnalyticsType.fuelConsumptionOverTime:
        return const FuelConsumptionOverTimeTile();
      case AnalyticsType.depthOverTime:
        return const DepthOverTimeTile();
      default:
        return const SizedBox.shrink();
    }
  }
}
