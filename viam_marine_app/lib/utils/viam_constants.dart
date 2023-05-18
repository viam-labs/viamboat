//ignore: depend_on_referenced_packages
import 'package:latlong2/latlong.dart';
import 'package:flutter_map/flutter_map.dart';

class ViamConstants {
  ViamConstants._();

  static const warningTimeInSeconds = 30;

  static const errorTimeInSeconds = 90;

  static const sdkDirectClientName = 'directDataClient';

  static const sdkClientName = 'viamSdk';

  static const appViamAddress = 'app.viam.com';

  static const authDomain = 'auth.viam.com';

  static const clientId = 'JSKrM2T8HrdIy2WMGEg9oluEyYemdY8T';

  static const scheme = 'viamboat';

  static const audience = 'https://app.viam.com/';

  static const sensorMinHeight = 110.0;

  static const readingsKey = 'Readings';

  static const readingKey = 'Reading';

  static const readingNameKey = 'ReadingName';

  static const depthReadingName = 'Depth';

  static const longitudeKey = 'Lng';

  static const latitudeKey = 'Lat';

  static const resourceDepth = 'depth';

  static const resourceMovement = 'movement';

  static const maxZoom = 18.0;

  static final defaultBounds = LatLngBounds(
    LatLng(40.585361, -73.859921),
    LatLng(40.415377, -74.141),
  );

  static const tileLayerOpenStreetMapUrl = 'https://tile.openstreetmap.org/{z}/{x}/{y}.png';

  static const tileLayerOpenSeeMapUrl = 'http://tiles.openseamap.org/seamark/{z}/{x}/{y}.png';
}
