import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/domain/app_viam/model/robot_config.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/water_temperature/body/water_temperature_tile_loaded_body.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/water_temperature/body/water_temperature_tile_loading_body.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/water_temperature/cubit/water_temperature_tile_cubit.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/water_temperature/cubit/water_temperature_tile_state.dart';

class WaterTemperatureTile extends StatelessWidget with ExtensionMixin {
  final RobotConfig robotConfig;
  final String? tempSensorName;
  final String? movementSensorName;

  const WaterTemperatureTile({
    super.key,
    this.tempSensorName,
    this.movementSensorName,
    required this.robotConfig,
  });

  @override
  Widget build(BuildContext context) => BlocProvider<WaterTemperatureCubit>(
        create: (context) => getIt<WaterTemperatureCubit>()
          ..init(
            locationId: robotConfig.location,
            robotName: robotConfig.name,
            tempSensorName: tempSensorName,
            movementSensorName: movementSensorName,
          ),
        child: BlocBuilder<WaterTemperatureCubit, WaterTemperatureTileState>(
          builder: _builder,
        ),
      );

  Widget _builder(
    BuildContext context,
    WaterTemperatureTileState state,
  ) =>
      state.maybeWhen(
        loading: WaterTemperatureTileLoadingBody.new,
        loaded: (waterTempData) => WaterTemperatureTileLoadedBody(
          config: robotConfig,
          waterTemperatureData: waterTempData,
          movementSensorName: movementSensorName,
          tempSensorName: tempSensorName,
        ),
        orElse: SizedBox.shrink,
      );
}
