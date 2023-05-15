import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/domain/app_viam/model/robot_config.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/water_depth/body/water_depth_tile_loaded_body.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/water_depth/body/water_depth_tile_loading_body.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/water_depth/cubit/water_depth_tile_cubit.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/water_depth/cubit/water_depth_tile_state.dart';

class WaterDepthTile extends StatelessWidget with ExtensionMixin {
  final RobotConfig config;
  final String? depthSensorName;
  final String? movementSensorName;

  const WaterDepthTile({
    super.key,
    this.depthSensorName,
    this.movementSensorName,
    required this.config,
  });

  @override
  Widget build(BuildContext context) => BlocProvider<WaterDepthCubit>(
        create: (context) => getIt<WaterDepthCubit>()
          ..init(
            locationId: config.location,
            robotName: config.name,
            depthSensorName: depthSensorName,
            movementSensorName: movementSensorName,
          ),
        child: BlocBuilder<WaterDepthCubit, WaterDepthTileState>(
          builder: _builder,
        ),
      );

  Widget _builder(
    BuildContext context,
    WaterDepthTileState state,
  ) =>
      state.maybeWhen(
        loading: WaterDepthTileLoadingBody.new,
        loaded: (waterDepth) => WaterDepthTileLoadedBody(
          config: config,
          depthSensorName: depthSensorName,
          movementSensorName: movementSensorName,
          waterDepthData: waterDepth,
        ),
        orElse: SizedBox.shrink,
      );
}
