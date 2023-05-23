import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
//ignore: depend_on_referenced_packages
import 'package:latlong2/latlong.dart';
import 'package:viam_marine/domain/app_viam/model/robot_config.dart';
import 'package:viam_marine/domain/data_viam/model/water_depth.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/analytics_tile_common_body/analytcis_tile_common_body.dart';
import 'package:viam_marine/presentation/routing/router.gr.dart';
import 'package:viam_marine/presentation/widgets/map/map_legend.dart';
import 'package:viam_marine/presentation/widgets/maps_common/map_common_body.dart';
import 'package:viam_marine/presentation/widgets/maps_common/map_marker_body.dart';
import 'package:viam_marine/style/dimens.dart';
import 'package:viam_marine/utils/map_helper.dart';
import 'package:viam_marine/utils/viam_constants.dart';

class WaterDepthTileLoadedBody extends StatelessWidget {
  final List<WaterDepth> waterDepthData;
  final String? depthSensorName;
  final String? movementSensorName;
  final RobotConfig config;

  const WaterDepthTileLoadedBody({
    super.key,
    required this.waterDepthData,
    required this.depthSensorName,
    required this.movementSensorName,
    required this.config,
  });

  @override
  Widget build(BuildContext context) => AnalyticsTileCommonBody(
        onTap: () => _navigateToWaterDepthPage(context),
        title: Strings.of(context).water_depth_chart_title,
        iconPath: Assets.images.svg.icons.waterDepthIcon.path,
        child: AbsorbPointer(
          absorbing: true,
          child: SizedBox(
            height: Dimens.mapTileHeight,
            child: Stack(
              children: [
                MapCommonBody(
                  bounds: boundsFromLatLngList(
                        waterDepthData.map((point) => LatLng(point.lat, point.long)).toList(growable: false),
                      ) ??
                      ViamConstants.defaultBounds,
                  polylines: _calculatePolylines(context),
                  markers: [
                    if (waterDepthData.isNotEmpty)
                      Marker(
                        point: LatLng(
                          waterDepthData.last.lat,
                          waterDepthData.last.long,
                        ),
                        builder: (context) => MapMarkerBody(
                          color: waterDepthData.last.getColor(context),
                        ),
                      )
                  ],
                ),
                Positioned(
                  bottom: Dimens.m,
                  left: Dimens.m,
                  child: MapLegend<WaterDepth>(
                    data: [
                      //TODO: Refactor when known
                      WaterDepth(lat: 0, long: 0, depth: 3, date: DateTime(2023, 5, 7)),
                      WaterDepth(lat: 0, long: 0, depth: 5, date: DateTime(2023, 5, 7)),
                      WaterDepth(lat: 0, long: 0, depth: 15, date: DateTime(2023, 5, 7)),
                    ],
                    textBuilder: (waterDepth) => waterDepth.depth.toInt().toString(),
                    colorBuilder: (waterDepth) => waterDepth.getColor(context),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  List<Polyline> _calculatePolylines(BuildContext context) {
    final List<Polyline> polylines = [];

    for (var i = 0; i < waterDepthData.length - 1; i++) {
      final left = waterDepthData.elementAt(i);
      final right = waterDepthData.elementAt(i + 1);
      final leftColor = left.getColor(context);
      final rightColor = right.getColor(context);
      polylines.add(Polyline(
        gradientColors: [leftColor, rightColor],
        points: [LatLng(left.lat, left.long), LatLng(right.lat, right.long)],
        strokeWidth: 4.0,
      ));
    }

    return polylines;
  }

  void _navigateToWaterDepthPage(BuildContext context) => AutoRouter.of(context).push(WaterDepthRoute(
        config: config,
        depthSensorName: depthSensorName,
        movementSensorName: movementSensorName,
      ));
}
