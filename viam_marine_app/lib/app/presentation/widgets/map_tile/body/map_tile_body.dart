part of '../map_tile.dart';

class _MapTileBody extends StatelessWidget {
  final double lat;
  final double lon;

  static const _mapHeight = 290.0;

  const _MapTileBody(
    this.lat,
    this.lon,
  );

  @override
  Widget build(BuildContext context) => CommonTileBody(
        title: Strings.of(context).map_tile_boat_loaction,
        subtitle: Strings.of(context).map_tile_boat_coordinates(lat, lon),
        childHeight: _mapHeight,
        child: FlutterMap(
          options: MapOptions(
            center: LatLng(lat, lon),
            zoom: 15,
          ),
          nonRotatedChildren: [
            AttributionWidget.defaultWidget(
              source: 'OpenStreetMap contributors',
              onSourceTapped: null,
            ),
          ],
          children: [
            TileLayer(
              urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
              userAgentPackageName: 'com.example.app',
            ),
            TileLayer(
              backgroundColor: Colors.transparent,
              urlTemplate: "http://tiles.openseamap.org/seamark/{z}/{x}/{y}.png",
            ),
            MarkerLayer(
              markers: [
                Marker(
                    point: LatLng(lat, lon),
                    builder: (_) {
                      return const Icon(
                        Icons.location_on,
                        color: Colors.red,
                        size: 50,
                      );
                    })
              ],
            )
          ],
        ),
      );
}
