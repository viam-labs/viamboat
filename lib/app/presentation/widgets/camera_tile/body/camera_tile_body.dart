part of '../camera_tile.dart';

class _CameraTileBody extends StatelessWidget {
  final String cameraName;
  const _CameraTileBody(this.cameraName);

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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(Dimens.m),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Strings.of(context).camera_tile_camera_name(cameraName),
                    style: AppTypography.mediumTitle,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(Dimens.xxxs),
              height: 230,
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(Dimens.s),
                ),
                child: Image.network(
                  "https://images-webcams.windy.com/69/1363080169/current/full/1363080169.jpg?rand=",
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      );
}
