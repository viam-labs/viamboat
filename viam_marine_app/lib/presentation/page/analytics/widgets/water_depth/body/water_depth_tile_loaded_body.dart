import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

//ignore: depend_on_referenced_packages
import 'package:latlong2/latlong.dart';
import 'package:viam_marine/domain/data_viam/model/water_depth.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/analytics_tile_common_body/analytcis_tile_common_body.dart';
import 'package:viam_marine/presentation/routing/router.gr.dart';
import 'package:viam_marine/presentation/widgets/map/map_legend.dart';
import 'package:viam_marine/style/dimens.dart';
import 'package:viam_marine/utils/map_helper.dart';

class WaterDepthTileLoadedBody extends StatelessWidget {
  final List<WaterDepth> _waterDepthData;

  const WaterDepthTileLoadedBody(
    this._waterDepthData, {
    super.key,
  });

  @override
  Widget build(BuildContext context) => AnalyticsTileCommonBody(
        onTap: () => AutoRouter.of(context).push(const WaterDepthRoute()),
        title: Strings.of(context).water_depth_chart_title,
        iconPath: Assets.images.svg.icons.waterDepthIcon.path,
        child: AbsorbPointer(
          absorbing: true,
          child: SizedBox(
            height: 192,
            child: Stack(
              children: [
                FlutterMap(
                  options: MapOptions(
                    maxZoom: 18,
                    bounds: boundsFromLatLngList(
                      _waterDepthData.map((point) => LatLng(point.lat, point.long)).toList(growable: false),
                    ),
                  ),
                  children: [
                    TileLayer(
                      urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                    ),
                    TileLayer(
                      backgroundColor: Colors.transparent,
                      urlTemplate: "http://tiles.openseamap.org/seamark/{z}/{x}/{y}.png",
                    ),
                    PolylineLayer(
                      polylines: _calculatePolylines(context),
                    ),
                    MarkerLayer(
                      markers: [
                        Marker(
                            point: LatLng(
                              _waterDepthData.last.lat,
                              _waterDepthData.last.long,
                            ),
                            builder: (context) {
                              return Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _waterDepthData.last.getColor(context),
                                ),
                                height: 18,
                                width: 18,
                                padding: const EdgeInsets.all(8),
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: context.getColors().mainWhite,
                                  ),
                                ),
                              );
                            })
                      ],
                    ),
                  ],
                ),
                Positioned(
                  bottom: Dimens.m,
                  left: Dimens.m,
                  child: MapLegend<WaterDepth>(
                    data: const [
                      WaterDepth(lat: 0, long: 0, depth: 3),
                      WaterDepth(lat: 0, long: 0, depth: 5),
                      WaterDepth(lat: 0, long: 0, depth: 15),
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

    for (var i = 0; i < _waterDepthData.length - 1; i++) {
      final left = _waterDepthData.elementAt(i);
      final right = _waterDepthData.elementAt(i + 1);
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
}
