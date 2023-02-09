import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:viam_marine/app/domain/error/model/viam_error.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/assets.gen.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/widgets/common_tile_body/common_tile_body.dart';
import 'package:viam_marine/app/presentation/widgets/map_tile/cubit/map_tile_cubit.dart';
import 'package:viam_marine/app/presentation/widgets/map_tile/cubit/map_tile_state.dart';
//ignore: depend_on_referenced_packages
import 'package:latlong2/latlong.dart';

part 'body/map_tile_body.dart';

class MapTile extends StatelessWidget with ExtensionMixin {
  final ViamAppResourceName positionSensor;

  const MapTile(this.positionSensor, {super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => getIt<MapTileCubit>()..init(positionSensor),
        child: BlocBuilder<MapTileCubit, MapTileState>(
          builder: (context, state) => state.maybeWhen(
            loaded: (latitude, longitude, heading) => _MapTileBody(
              lat: latitude,
              lon: longitude,
              heading: heading,
            ),
            error: (viamError, lastLatitude, lastLongitude, lastHeading) => _MapTileBody(
              lat: lastLatitude ?? 0.0,
              lon: lastLongitude ?? 0.0,
              heading: lastHeading ?? 0.0,
              error: viamError,
            ),
            orElse: () => const SizedBox.shrink(),
          ),
        ),
      );
}
