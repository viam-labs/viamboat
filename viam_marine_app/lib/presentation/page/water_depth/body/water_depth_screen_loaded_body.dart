import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';

//ignore: depend_on_referenced_packages
import 'package:latlong2/latlong.dart';
import 'package:viam_marine/domain/data_viam/model/filter_type.dart';
import 'package:viam_marine/domain/data_viam/model/water_depth.dart';
import 'package:viam_marine/domain/data_viam/model/water_filter.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/water_depth/cubit/water_depth_cubit.dart';
import 'package:viam_marine/presentation/routing/router.gr.dart';
import 'package:viam_marine/presentation/widgets/app_bar/viam_app_bar.dart';
import 'package:viam_marine/presentation/widgets/map/map_legend.dart';
import 'package:viam_marine/presentation/widgets/maps_common/map_common_body.dart';
import 'package:viam_marine/presentation/widgets/maps_common/map_filter_button.dart';
import 'package:viam_marine/presentation/widgets/maps_common/map_marker_body.dart';
import 'package:viam_marine/style/dimens.dart';
import 'package:viam_marine/utils/map_helper.dart';
import 'package:viam_marine/utils/viam_constants.dart';

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
            MapCommonBody(
              bounds: boundsFromLatLngList(
                    _waterDepthData.map((point) => LatLng(point.lat, point.long)).toList(growable: false),
                  ) ??
                  ViamConstants.defaultBounds,
              polylines: _calculatePolylines(context),
              markers: [
                if (_waterDepthData.isNotEmpty)
                  Marker(
                    point: LatLng(
                      _waterDepthData.last.lat,
                      _waterDepthData.last.long,
                    ),
                    builder: (context) => MapMarkerBody(
                      color: _waterDepthData.last.getColor(context),
                    ),
                  ),
              ],
            ),
            MapFilterButton(onTap: () => _openFiltersScreen(context)),
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

  Future<void> _openFiltersScreen(BuildContext context) async {
    final cubit = context.read<WaterDepthCubit>();
    final result = await AutoRouter.of(context).push(
      FiltersRoute(
        type: FiltersType.waterDepth,
        initialStartDate: _getMinDate(),
        initialEndDate: _getMaxDate(),
      ),
    );

    if (result is WaterFilter) {
      cubit.setDepthFilters(result);
    }
  }

  DateTime? _getMinDate() => minBy(_waterDepthData, (waterDepth) => waterDepth.date)?.date;

  DateTime? _getMaxDate() => maxBy(_waterDepthData, (waterDepth) => waterDepth.date)?.date;
}
