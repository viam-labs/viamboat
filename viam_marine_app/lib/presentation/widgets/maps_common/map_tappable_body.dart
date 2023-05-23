import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_popup/flutter_map_marker_popup.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/utils/viam_constants.dart';

class MapTappableBody extends StatelessWidget with ExtensionMixin {
  final LatLngBounds bounds;
  final List<Polyline> polylines;
  final List<Marker> markers;

  const MapTappableBody({
    super.key,
    required this.bounds,
    required this.polylines,
    required this.markers,
  });

  @override
  Widget build(BuildContext context) => FlutterMap(
        options: MapOptions(
          maxZoom: ViamConstants.maxZoom,
          bounds: bounds,
        ),
        children: [
          TileLayer(
            urlTemplate: ViamConstants.tileLayerOpenStreetMapUrl,
          ),
          TileLayer(
            backgroundColor: context.getColors().transparent,
            urlTemplate: ViamConstants.tileLayerOpenSeeMapUrl,
          ),
          PolylineLayer(polylines: polylines),
          PopupMarkerLayerWidget(
            options: PopupMarkerLayerOptions(
              markers: markers,
            ),
          ),
        ],
      );
}
