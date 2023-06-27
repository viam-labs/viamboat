import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:viam_marine/domain/app_viam/model/robot_config.dart';
import 'package:viam_marine/presentation/page/analytics/cubit/analytics_cubit.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/depth_over_time/depth_over_time_tile.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_over_time/fuel_consumption_over_time_tile.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_per_mile/fuel_consumption_per_mile_tile.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/water_depth/water_depth_tile.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/water_temperature/water_temperature_tile.dart';
import 'package:viam_marine/utils/viam_constants.dart';

class AnalyticsTileBodyWrapper extends StatefulWidget {
  final AnalyticsType type;
  final RobotConfig config;
  final List<String?> sensorNames;

  const AnalyticsTileBodyWrapper({
    super.key,
    required this.sensorNames,
    required this.type,
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
    switch (widget.type) {
      case AnalyticsType.waterTemperature:
        return WaterTemperatureTile(
          robotConfig: widget.config,
          tempSensorName:
              widget.sensorNames.firstWhereOrNull((name) => name?.contains(ViamConstants.resourceTemperature) ?? false),
          movementSensorName:
              widget.sensorNames.firstWhereOrNull((name) => name?.contains(ViamConstants.resourceMovement) ?? false),
        );
      case AnalyticsType.waterDepth:
        return WaterDepthTile(
          config: widget.config,
          depthSensorName:
              widget.sensorNames.firstWhereOrNull((name) => name?.contains(ViamConstants.resourceDepth) ?? false),
          movementSensorName:
              widget.sensorNames.firstWhereOrNull((name) => name?.contains(ViamConstants.resourceMovement) ?? false),
        );
      case AnalyticsType.fuelConsumptionPerMile:
        return const FuelConsumptionPerMileTile();
      case AnalyticsType.fuelConsumptionOverTime:
        return FuelConsumptionOverTimeTile(
          locationId: widget.config.location,
          robotName: widget.config.name,
        );
      case AnalyticsType.depthOverTime:
        return DepthOverTimeTile(
          robotConfig: widget.config,
          sensorName:
              widget.sensorNames.firstWhereOrNull((name) => name?.contains(ViamConstants.resourceDepth) ?? false),
        );
      default:
        return const SizedBox.shrink();
    }
  }
}
