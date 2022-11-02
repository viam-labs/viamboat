part of '../map_tile.dart';

class _MapTileBody extends StatelessWidget {
  final double lat;
  final double lon;

  const _MapTileBody(
    this.lat,
    this.lon,
  );

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: context.getColors().mainGrey,
          ),
          borderRadius: BorderRadius.circular(Dimens.s),
          color: context.getColors().mainWhite,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _TopInfoTile(
              subtitle: '$lat, $lon',
            ),
            Container(
              height: 290,
              margin: const EdgeInsets.all(Dimens.xxxs),
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(Dimens.s),
                ),
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
              ),
            ),
          ],
        ),
      );
}

class _TopInfoTile extends StatelessWidget {
  final String subtitle;

  const _TopInfoTile({
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(Dimens.m),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Strings.of(context).map_tile_boat_loaction,
              style: AppTypography.mediumTitle,
            ),
            const SizedBox(height: Dimens.xs),
            Text(
              subtitle,
              style: AppTypography.body,
            ),
          ],
        ),
      );
}
