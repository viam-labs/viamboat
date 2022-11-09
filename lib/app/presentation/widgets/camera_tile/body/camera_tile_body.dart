part of '../camera_tile.dart';

class _CameraTileBody extends StatelessWidget {
  final List<int> image;

  static const _cameraHeight = 230.0;

  const _CameraTileBody(this.image);

  @override
  Widget build(BuildContext context) => CommonTileBody(
        title: Strings.of(context).camera_tile_camera_name('Cam'),
        childHeight: _cameraHeight,
        child: Image.memory(
          Uint8List.fromList(image),
          fit: BoxFit.cover,
        ),
      );
}
