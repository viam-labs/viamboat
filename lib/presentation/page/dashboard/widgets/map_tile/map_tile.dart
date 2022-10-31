import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

part 'body/map_tile_body.dart';

class MapTile extends StatelessWidget with ExtensionMixin {
  const MapTile({super.key});

  @override
  Widget build(BuildContext context) => const _MapTileBody();
}
