import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/utils/viam_constants.dart';

class MapCommonBody extends StatelessWidget with ExtensionMixin {
  final LatLngBounds bounds;
  final List<Polyline> polylines;
  final List<Marker> markers;

  const MapCommonBody({
    required this.bounds,
    required this.polylines,
    required this.markers,
    super.key,
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
          MarkerLayer(markers: markers)
        ],
      );
}
