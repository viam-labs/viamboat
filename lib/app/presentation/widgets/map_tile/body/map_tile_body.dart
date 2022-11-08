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
        subtitle: '$lat, $lon',
        childHeight: _mapHeight,
        child: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(lat, lon),
            zoom: Dimens.m,
          ),
          markers: {
            Marker(
              markerId: const MarkerId('1'),
              position: LatLng(lat, lon),
            ),
          },
          myLocationButtonEnabled: false,
        ),
      );
}
