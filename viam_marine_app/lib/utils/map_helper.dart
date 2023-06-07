import 'package:flutter_map/flutter_map.dart';

//ignore: depend_on_referenced_packages
import 'package:latlong2/latlong.dart';

LatLngBounds? boundsFromLatLngList(List<LatLng> points) {
  if (points.isEmpty) return null;
  double? x0, x1, y0, y1;
  for (final latLng in points) {
    if (x0 == null) {
      x0 = x1 = latLng.latitude;
      y0 = y1 = latLng.longitude;
    } else {
      if (latLng.latitude > x1!) x1 = latLng.latitude;
      if (latLng.latitude < x0) x0 = latLng.latitude;
      if (latLng.longitude > y1!) y1 = latLng.longitude;
      if (latLng.longitude < y0!) y0 = latLng.longitude;
    }
  }

  final xMargin = (x1! - x0!).abs() * 0.1;
  final yMargin = (y1! - y0!).abs() * 0.1;

  return LatLngBounds(LatLng(x1 + xMargin, y1 + yMargin), LatLng(x0 - xMargin, y0 - yMargin));
}
