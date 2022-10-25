import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/data/viam/common/v1/common.pb.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/dashboard/widgets/sensor_tile/cubit/sensor_tile_cubit.dart';
import 'package:viam_marine/presentation/page/dashboard/widgets/sensor_tile/cubit/sensor_tile_state.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/style/dimens.dart';

part 'body/sensor_tile_body.dart';

class SensorTile extends StatelessWidget {
  final ResourceName _resourceName;

  const SensorTile(
    this._resourceName, {
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => getIt<SensorTileCubit>()..init(_resourceName),
        child: BlocBuilder<SensorTileCubit, SensorTileState>(
          builder: (context, state) => state.maybeWhen(
            loaded: (name, value) => _SensorTileBody(
              title: name,
              value: value,
            ),
            orElse: () => const SizedBox.shrink(),
          ),
        ),
      );
}
