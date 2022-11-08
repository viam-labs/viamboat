part of '../camera_tile.dart';

class _CameraTileBody extends StatelessWidget {
  final String cameraName;
  const _CameraTileBody(this.cameraName);

  @override
  Widget build(BuildContext context) => CommonTileBody(
        title: Strings.of(context).camera_tile_camera_name(cameraName),
        childHeight: 230,
        //TODO: Refactor when connection rdy
        child: Image.network(
          "https://images-webcams.windy.com/69/1363080169/current/full/1363080169.jpg?rand=",
          fit: BoxFit.cover,
        ),
      );
}
