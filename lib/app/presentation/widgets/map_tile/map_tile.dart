import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/widgets/map_tile/cubit/map_tile_cubit.dart';
import 'package:viam_marine/app/presentation/widgets/map_tile/cubit/map_tile_state.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

part 'body/map_tile_body.dart';

class MapTile extends StatelessWidget with ExtensionMixin {
  final ViamAppResourceName positionSensor;

  const MapTile(this.positionSensor, {super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => getIt<MapTileCubit>()..init(positionSensor),
        child: BlocBuilder<MapTileCubit, MapTileState>(
          builder: (context, state) => state.maybeWhen(
            loaded: (latitude, longitude) => _MapTileBody(
              latitude,
              longitude,
            ),
            orElse: () => const SizedBox.shrink(),
          ),
        ),
      );
}
