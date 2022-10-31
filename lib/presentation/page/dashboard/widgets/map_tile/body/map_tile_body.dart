part of '../map_tile.dart';

class _MapTileBody extends StatelessWidget {
  final double lat;
  final double lon;

  const _MapTileBody(
    this.lat,
    this.lon,
  );

  static const radius = Radius.circular(Dimens.s);

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: context.getColors().mainGrey,
          ),
          borderRadius: const BorderRadius.only(
            topLeft: radius,
            topRight: radius,
          ),
          color: context.getColors().mainWhite,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _TopInfoTile(
              //TODO: It will be refactored in next task.
              subtitle: '40.77179, -73.98219',
            ),
            Container(
              height: 290,
              margin: const EdgeInsets.all(Dimens.xxxs),
              child: const GoogleMap(
                initialCameraPosition: CameraPosition(
                  //TODO: It will be refactored in next task.
                  target: LatLng(40.77179, -73.98219),
                  zoom: Dimens.m,
                ),
                myLocationButtonEnabled: false,
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
