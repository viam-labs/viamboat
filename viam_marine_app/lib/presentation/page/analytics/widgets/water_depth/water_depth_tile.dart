import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/water_depth/body/water_depth_tile_loaded_body.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/water_depth/body/water_depth_tile_loading_body.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/water_depth/cubit/water_depth_tile_cubit.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/water_depth/cubit/water_depth_tile_state.dart';

class WaterTemperatureTile extends StatelessWidget with ExtensionMixin {
  const WaterTemperatureTile({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<WaterDepthCubit>(
        create: (context) => getIt<WaterDepthCubit>(),
        child: Scaffold(
          body: BlocBuilder<WaterDepthCubit, WaterDepthTileState>(
            builder: _builder,
          ),
        ),
      );

  Widget _builder(
    BuildContext context,
    WaterDepthTileState state,
  ) =>
      state.maybeWhen(
        loading: () => const WaterDepthTileLoadingBody(),
        loaded: () => const WaterDepthTileLoadedBody(),
        orElse: () => const SizedBox.shrink(),
      );
}
