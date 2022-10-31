import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:viam_marine/app/domain/resource/model/viam_app_resource_name.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/page/dashboard/widgets/sensor_tile/cubit/sensor_tile_cubit.dart';
import 'package:viam_marine/app/presentation/page/dashboard/widgets/sensor_tile/cubit/sensor_tile_state.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';
import 'package:viam_marine/style/number_formats.dart';

part 'body/sensor_tile_body.dart';

class SensorTile extends StatelessWidget {
  final ViamAppResourceName _resourceName;

  const SensorTile(
    this._resourceName, {
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => getIt<SensorTileCubit>()..init(_resourceName),
        child: BlocBuilder<SensorTileCubit, SensorTileState>(
          builder: (context, state) => state.maybeWhen(
            loaded: (
              name,
              value,
              isGraphicalSensor,
            ) =>
                _SensorTileBody(
              title: name,
              value: value,
              isGraphicalSensor: isGraphicalSensor,
            ),
            orElse: () => const SizedBox.shrink(),
          ),
        ),
      );
}
