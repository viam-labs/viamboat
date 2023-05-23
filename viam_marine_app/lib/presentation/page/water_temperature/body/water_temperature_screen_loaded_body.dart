import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_popup/flutter_map_marker_popup.dart';
//ignore: depend_on_referenced_packages
import 'package:latlong2/latlong.dart';
import 'package:viam_marine/domain/data_viam/model/filter_type.dart';
import 'package:viam_marine/domain/data_viam/model/water_filter.dart';
import 'package:viam_marine/domain/data_viam/model/water_temperature.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/water_temperature/cubit/water_temperature_cubit.dart';
import 'package:viam_marine/presentation/page/water_temperature/widgets/water_temp_marker.dart';
import 'package:viam_marine/presentation/routing/router.gr.dart';
import 'package:viam_marine/presentation/widgets/app_bar/viam_app_bar.dart';
import 'package:viam_marine/presentation/widgets/map/map_legend.dart';
import 'package:viam_marine/presentation/widgets/maps_common/map_common_body.dart';
import 'package:viam_marine/presentation/widgets/maps_common/map_filter_button.dart';
import 'package:viam_marine/style/dimens.dart';
import 'package:viam_marine/utils/map_helper.dart';
import 'package:viam_marine/utils/viam_constants.dart';

class WaterTemperatureScreenLoadedBody extends StatefulWidget {
  final List<WaterTemperature> waterTemperatureData;

  const WaterTemperatureScreenLoadedBody({
    required this.waterTemperatureData,
    super.key,
  });

  @override
  State<WaterTemperatureScreenLoadedBody> createState() => _WaterTemperatureScreenLoadedBodyState();
}

class _WaterTemperatureScreenLoadedBodyState extends State<WaterTemperatureScreenLoadedBody> {
  late WaterTemperature? _currentWaterTemperature;
  late PopupController? _popupController;
  late List<WaterTempMarker> _markers;

  @override
  void initState() {
    super.initState();
    _currentWaterTemperature = widget.waterTemperatureData.isNotEmpty ? widget.waterTemperatureData.last : null;
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
          title: Strings.of(context).water_temp_screen_title,
          leading: BackButton(
            color: context.getColors().darkBlue1,
          ),
        ),
        body: Stack(
          children: [
            MapCommonBody(
              popupController: _popupController,
              bounds: boundsFromLatLngList(
                    widget.waterTemperatureData.map((point) => LatLng(point.lat, point.long)).toList(growable: false),
                  ) ??
                  ViamConstants.defaultBounds,
              markers: _getMarkers(),
              polylines: _calculatePolylines(context),
            ),
            MapFilterButton(onTap: () => _openFiltersScreen(context)),
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

    for (var i = 0; i < widget.waterTemperatureData.length - 1; i++) {
      final left = widget.waterTemperatureData.elementAt(i);
      final right = widget.waterTemperatureData.elementAt(i + 1);
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

  List<WaterTempMarker> _getMarkers() => widget.waterTemperatureData
      .map(
        (waterTemp) => WaterTempMarker(
          isVisible: waterTemp == _currentWaterTemperature,
          waterTemperature: waterTemp,
          onTap: () => _onMarkerTap(waterTemp),
        ),
      )
      .toList(growable: false);

  void _onMarkerTap(WaterTemperature waterTemp) {
    _currentWaterTemperature = waterTemp;
    final marker = _markers.firstWhere((marker) => marker.waterTemperature == waterTemp);

    _popupController?.hideAllPopups();
    _popupController?.togglePopup(marker);
    setState(() {});
  }

  Future<void> _openFiltersScreen(BuildContext context) async {
    final cubit = context.read<WaterTemperatureCubit>();
    final result = await AutoRouter.of(context).push(
      FiltersRoute(
        type: FiltersType.waterTemperature,
        initialEndDate: _getMaxDate(),
        initialStartDate: _getMinDate(),
      ),
    );
    if (result is WaterFilter) {
      cubit.setTemperatureFilters(result);
    }
  }

  DateTime? _getMinDate() => minBy(widget.waterTemperatureData, (waterTemp) => waterTemp.date)?.date;

  DateTime? _getMaxDate() => maxBy(widget.waterTemperatureData, (waterTemp) => waterTemp.date)?.date;
}
