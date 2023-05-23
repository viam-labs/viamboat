//ignore: depend_on_referenced_packages
import 'package:latlong2/latlong.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter/material.dart';
import 'package:viam_marine/domain/data_viam/model/water_depth.dart';
import 'package:viam_marine/presentation/widgets/maps_common/map_marker_body.dart';

class WaterDepthMarker extends Marker {
  final WaterDepth waterDepth;
  final VoidCallback? onTap;
  final bool isVisible;

  WaterDepthMarker({
    required this.waterDepth,
    required this.isVisible,
    this.onTap,
  }) : super(
          point: LatLng(waterDepth.lat, waterDepth.long),
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
                color: waterDepth.getColor(context),
              ),
            ),
          ),
        );
}
