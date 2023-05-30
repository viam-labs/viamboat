import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_popup/flutter_map_marker_popup.dart';
//ignore: depend_on_referenced_packages
import 'package:latlong2/latlong.dart';
import 'package:viam_marine/domain/data_viam/model/filter_type.dart';
import 'package:viam_marine/domain/data_viam/model/water_depth.dart';
import 'package:viam_marine/domain/data_viam/model/water_filter.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/water_depth/cubit/water_depth_cubit.dart';
import 'package:viam_marine/presentation/page/water_depth/widgets/water_depth_marker.dart';
import 'package:viam_marine/presentation/routing/router.gr.dart';
import 'package:viam_marine/presentation/widgets/app_bar/viam_app_bar.dart';
import 'package:viam_marine/presentation/widgets/map/map_legend.dart';
import 'package:viam_marine/presentation/widgets/maps_common/map_common_body.dart';
import 'package:viam_marine/presentation/widgets/maps_common/map_filter_button.dart';
import 'package:viam_marine/style/dimens.dart';
import 'package:viam_marine/utils/map_helper.dart';
import 'package:viam_marine/utils/viam_constants.dart';

class WaterDepthScreenLoadedBody extends StatefulWidget {
  final List<WaterDepth> waterDepthData;

  const WaterDepthScreenLoadedBody({
    super.key,
    required this.waterDepthData,
  });

  @override
  State<WaterDepthScreenLoadedBody> createState() => _WaterDepthScreenLoadedBodyState();
}

class _WaterDepthScreenLoadedBodyState extends State<WaterDepthScreenLoadedBody> {
  late WaterDepth? _currentWaterDepth;
  late PopupController _popupController;
  late List<WaterDepthMarker> _markers;
  bool _isPopupOpen = false;

  @override
  void initState() {
    super.initState();
    _currentWaterDepth = widget.waterDepthData.isNotEmpty ? widget.waterDepthData.last : null;
    _popupController = PopupController();
    _markers = _getMarkers();
  }

  @override
  void dispose() {
    super.dispose();
    _popupController = PopupController();
  }

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
              popupController: _popupController,
              polylines: _calculatePolylines(context),
              markers: _getMarkers(),
              bounds: boundsFromLatLngList(
                    widget.waterDepthData.map((point) => LatLng(point.lat, point.long)).toList(growable: false),
                  ) ??
                  ViamConstants.defaultBounds,
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

    for (var i = 0; i < widget.waterDepthData.length - 1; i++) {
      final left = widget.waterDepthData.elementAt(i);
      final right = widget.waterDepthData.elementAt(i + 1);
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

  DateTime? _getMinDate() => minBy(widget.waterDepthData, (waterDepth) => waterDepth.date)?.date;

  DateTime? _getMaxDate() => maxBy(widget.waterDepthData, (waterDepth) => waterDepth.date)?.date;

  void _onMarkerTap(WaterDepth waterDepth) {
    if (_currentWaterDepth == waterDepth && _isPopupOpen) {
      _popupController.hideAllPopups();
      _isPopupOpen = false;
    } else {
      _currentWaterDepth = waterDepth;
      _isPopupOpen = true;

      final WaterDepthMarker marker = _markers.firstWhere((marker) => marker.waterDepth == waterDepth);

      _popupController.hideAllPopups();
      _popupController.togglePopup(marker);
    }
    setState(() {});
  }

  List<WaterDepthMarker> _getMarkers() => widget.waterDepthData
      .map<WaterDepthMarker>(
        (waterDepth) => WaterDepthMarker(
          waterDepth: waterDepth,
          isVisible: waterDepth == _currentWaterDepth,
          onTap: () => _onMarkerTap(waterDepth),
        ),
      )
      .toList(growable: false);
}
