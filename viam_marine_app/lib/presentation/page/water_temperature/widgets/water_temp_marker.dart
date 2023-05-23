//ignore: depend_on_referenced_packages
import 'package:latlong2/latlong.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:viam_marine/domain/data_viam/model/water_temperature.dart';
import 'package:viam_marine/presentation/widgets/maps_common/map_marker_body.dart';

class WaterTempMarker extends Marker {
  final WaterTemperature waterTemperature;
  final VoidCallback? onTap;
  final bool isVisible;

  WaterTempMarker({
    required this.waterTemperature,
    required this.isVisible,
    this.onTap,
  }) : super(
          point: LatLng(waterTemperature.lat, waterTemperature.long),
          builder: (context) => Visibility(
            visible: isVisible,
            maintainAnimation: true,
            maintainState: true,
            maintainInteractivity: true,
            maintainSemantics: true,
            maintainSize: true,
            child: GestureDetector(
              onTap: onTap,
              child: MapMarkerBody(
                color: waterTemperature.getColor(context),
              ),
            ),
          ),
        );
}
