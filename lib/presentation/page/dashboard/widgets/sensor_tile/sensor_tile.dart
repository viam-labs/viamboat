import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/dashboard/widgets/sensor_tile/cubit/sensor_tile_cubit.dart';
import 'package:viam_marine/presentation/page/dashboard/widgets/sensor_tile/cubit/sensor_tile_state.dart';
import 'package:viam_marine/style/dimens.dart';

part 'body/sensor_tile_body.dart';

class SensorTile extends StatelessWidget {
  const SensorTile({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (_) => getIt<SensorTileCubit>()..init(),
        child: BlocBuilder<SensorTileCubit, SensorTileState>(
          builder: (context, state) => state.maybeWhen(
            loaded: () => const _SensorTileBody(
              title: 'Example Title',
              value: '89',
            ),
            orElse: () => const SizedBox.shrink(),
          ),
        ),
      );
}
