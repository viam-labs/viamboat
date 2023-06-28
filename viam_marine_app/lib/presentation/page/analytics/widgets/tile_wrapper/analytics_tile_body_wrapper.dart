import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:viam_marine/domain/app_viam/model/robot_config.dart';
import 'package:viam_marine/domain/data_viam/model/analytics_data.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/depth_over_time/depth_over_time_tile.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_over_time/fuel_consumption_over_time_tile.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_per_mile/fuel_consumption_per_mile_tile.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/water_depth/water_depth_tile.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/water_temperature/water_temperature_tile.dart';
import 'package:viam_marine/utils/viam_constants.dart';

class AnalyticsTileBodyWrapper extends StatefulWidget {
  final AnalyticsData data;
  final RobotConfig config;

  const AnalyticsTileBodyWrapper({
    super.key,
    required this.data,
    required this.config,
  });

  @override
  State<AnalyticsTileBodyWrapper> createState() => _AnalyticsTileBodyWrapperState();
}

class _AnalyticsTileBodyWrapperState extends State<AnalyticsTileBodyWrapper> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return _getTileBody();
  }

  @override
  bool get wantKeepAlive => true;

  Widget _getTileBody() {
    switch (widget.data.type) {
      case AnalyticsType.waterTemperature:
        return WaterTemperatureTile(
          robotConfig: widget.config,
          tempSensorName: widget.data.sensorNames
              .firstWhereOrNull((name) => name?.toLowerCase().contains(ViamConstants.resourceTemperature) ?? false),
          movementSensorName: widget.data.sensorNames
              .firstWhereOrNull((name) => name?.toLowerCase().contains(ViamConstants.resourceMovement) ?? false),
        );
      case AnalyticsType.waterDepth:
        return WaterDepthTile(
          config: widget.config,
          depthSensorName: widget.data.sensorNames
              .firstWhereOrNull((name) => name?.toLowerCase().contains(ViamConstants.resourceDepth) ?? false),
          movementSensorName: widget.data.sensorNames
              .firstWhereOrNull((name) => name?.toLowerCase().contains(ViamConstants.resourceMovement) ?? false),
        );
      case AnalyticsType.fuelConsumptionPerMile:
        return const FuelConsumptionPerMileTile();
      case AnalyticsType.fuelConsumptionOverTime:
        return FuelConsumptionOverTimeTile(
          locationId: widget.config.location,
          robotName: widget.config.name,
          fuelSensorName: widget.data.sensorNames
              .firstWhereOrNull((name) => name?.toLowerCase().contains(ViamConstants.resourceFuel) ?? false),
          movementSensorName: widget.data.sensorNames
              .firstWhereOrNull((name) => name?.toLowerCase().contains(ViamConstants.resourceMovement) ?? false),
        );
      case AnalyticsType.depthOverTime:
        return DepthOverTimeTile(
          robotConfig: widget.config,
          sensorName: widget.data.sensorNames
              .firstWhereOrNull((name) => name?.toLowerCase().contains(ViamConstants.resourceDepth) ?? false),
        );
      default:
        return const SizedBox.shrink();
    }
  }
}
