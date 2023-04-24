import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

//ignore: depend_on_referenced_packages
import 'package:latlong2/latlong.dart';
import 'package:viam_marine/domain/data_viam/model/water_depth.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/widgets/app_bar/viam_app_bar.dart';
import 'package:viam_marine/presentation/widgets/map/map_legend.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/style/dimens.dart';
import 'package:viam_marine/utils/map_helper.dart';

class WaterDepthScreenLoadedBody extends StatelessWidget {
  final List<WaterDepth> _waterDepthData;

  const WaterDepthScreenLoadedBody(
    this._waterDepthData, {
    super.key,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: ViamAppBar(
          title: Strings.of(context).water_depth_screen_title,
          leading: BackButton(
            color: context.getColors().darkBlue1,
          ),
        ),
        body: Stack(
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
                  userAgentPackageName: 'com.example.app',
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
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                            ),
                          );
                        })
                  ],
                )
              ],
            ),
            Positioned.fill(
              top: 20,
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 50,
                    ),
                    child: Text(
                      'Filters',
                      style: AppTypography.bodyMedium.copyWith(
                        color: context.getColors().darkBlue1,
                      ),
                    ),
                  ),
                ),
              ),
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
