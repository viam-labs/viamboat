import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/domain/app_viam/model/robot_config.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/water_depth/body/water_depth_screen_loaded_body.dart';
import 'package:viam_marine/presentation/page/water_depth/body/water_depth_screen_loading_body.dart';
import 'package:viam_marine/presentation/page/water_depth/cubit/water_depth_cubit.dart';
import 'package:viam_marine/presentation/page/water_depth/cubit/water_depth_state.dart';

class WaterDepthPage extends StatelessWidget with ExtensionMixin {
  final RobotConfig config;
  final String? depthSensorName;
  final String? movementSensorName;

  const WaterDepthPage({
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
        child: BlocBuilder<WaterDepthCubit, WaterDepthScreenState>(
          builder: _builder,
        ),
      );

  Widget _builder(
    BuildContext context,
    WaterDepthScreenState state,
  ) =>
      state.maybeWhen(
        loading: WaterDepthScreenLoadingBody.new,
        loaded: WaterDepthScreenLoadedBody.new,
        orElse: SizedBox.shrink,
      );
}
