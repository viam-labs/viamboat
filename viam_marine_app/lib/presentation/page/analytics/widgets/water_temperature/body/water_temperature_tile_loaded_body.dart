import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

//ignore: depend_on_referenced_packages
import 'package:latlong2/latlong.dart';
import 'package:viam_marine/domain/data_viam/model/water_temperature.dart';
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

class WaterTemperatureTileLoadedBody extends StatelessWidget {
  final List<WaterTemperature> _waterTemperatureData;

  const WaterTemperatureTileLoadedBody(
    this._waterTemperatureData, {
    super.key,
  });

  @override
  Widget build(BuildContext context) => AnalyticsTileCommonBody(
        onTap: () => _navigateToWaterTemperaturePage(context),
        title: Strings.of(context).water_temp_chart_title,
        iconPath: Assets.images.svg.icons.waterTemperature.path,
        child: AbsorbPointer(
          absorbing: true,
          child: SizedBox(
            height: Dimens.mapTileHeight,
            child: Stack(
              children: [
                MapCommonBody(
                  bounds: boundsFromLatLngList(
                        _waterTemperatureData.map((point) => LatLng(point.lat, point.long)).toList(growable: false),
                      ) ??
                      ViamConstants.defaultBounds,
                  polylines: _calculatePolylines(context),
                  markers: [
                    if (_waterTemperatureData.isNotEmpty)
                      Marker(
                        point: LatLng(
                          _waterTemperatureData.last.lat,
                          _waterTemperatureData.last.long,
                        ),
                        builder: (context) => MapMarkerBody(
                          color: _waterTemperatureData.last.getColor(context),
                        ),
                      )
                  ],
                ),
                Positioned(
                  bottom: Dimens.m,
                  left: Dimens.m,
                  child: MapLegend<WaterTemperature>(
                    data: [
                      WaterTemperature(lat: 0, long: 0, temperature: 15, date: DateTime(2023, 5, 7)),
                      WaterTemperature(lat: 0, long: 0, temperature: 5, date: DateTime(2023, 5, 7)),
                      WaterTemperature(lat: 0, long: 0, temperature: 3, date: DateTime(2023, 5, 7)),
                    ],
                    textBuilder: (waterTemp) => waterTemp.temperature.toInt().toString(),
                    colorBuilder: (waterTemp) => waterTemp.getColor(context),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  List<Polyline> _calculatePolylines(BuildContext context) {
    final List<Polyline> polylines = [];

    for (var i = 0; i < _waterTemperatureData.length - 1; i++) {
      final left = _waterTemperatureData.elementAt(i);
      final right = _waterTemperatureData.elementAt(i + 1);
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

  void _navigateToWaterTemperaturePage(BuildContext context) =>
      AutoRouter.of(context).push(const WaterTemperatureRoute());
}
