import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';

//ignore: depend_on_referenced_packages
import 'package:latlong2/latlong.dart';
import 'package:viam_marine/domain/data_viam/model/filter_type.dart';
import 'package:viam_marine/domain/data_viam/model/water_filter.dart';
import 'package:viam_marine/domain/data_viam/model/water_temperature.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/water_temperature/cubit/water_temperature_cubit.dart';
import 'package:viam_marine/presentation/routing/router.gr.dart';
import 'package:viam_marine/presentation/widgets/app_bar/viam_app_bar.dart';
import 'package:viam_marine/presentation/widgets/map/map_legend.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/style/dimens.dart';
import 'package:viam_marine/utils/map_helper.dart';

class WaterTemperatureScreenLoadedBody extends StatelessWidget {
  final List<WaterTemperature> _waterTemperatureData;

  const WaterTemperatureScreenLoadedBody(
    this._waterTemperatureData, {
    super.key,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: ViamAppBar(
          title: Strings.of(context).water_temp_screen_title,
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
                  _waterTemperatureData.map((point) => LatLng(point.lat, point.long)).toList(growable: false),
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
                    if (_waterTemperatureData.isNotEmpty)
                      Marker(
                          point: LatLng(
                            _waterTemperatureData.last.lat,
                            _waterTemperatureData.last.long,
                          ),
                          builder: (context) {
                            return Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _waterTemperatureData.last.getColor(context),
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
                )
              ],
            ),
            Positioned.fill(
              top: 20,
              child: Align(
                alignment: Alignment.topCenter,
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => _openFiltersScreen(context),
                  child: Container(
                    decoration: BoxDecoration(
                      color: context.getColors().mainWhite,
                      borderRadius: BorderRadius.circular(Dimens.m),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 50,
                      ),
                      child: Text(
                        Strings.of(context).water_temp_screen_filters,
                        style: AppTypography.bodyMedium.copyWith(
                          color: context.getColors().darkBlue1,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
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

  Future<void> _openFiltersScreen(BuildContext context) async {
    final cubit = context.read<WaterTemperatureCubit>();
    final result = await AutoRouter.of(context).push(
      FiltersRoute(type: FiltersType.waterTemperature),
    );
    if (result is WaterFilter) {
      cubit.setTemperatureFilters(result);
    }
  }
}
