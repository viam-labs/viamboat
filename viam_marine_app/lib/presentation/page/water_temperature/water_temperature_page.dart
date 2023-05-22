import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/domain/app_viam/model/robot_config.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/water_temperature/body/water_temperature_screen_loaded_body.dart';
import 'package:viam_marine/presentation/page/water_temperature/body/water_temperature_screen_loading_body.dart';
import 'package:viam_marine/presentation/page/water_temperature/cubit/water_temperature_cubit.dart';
import 'package:viam_marine/presentation/page/water_temperature/cubit/water_temperature_state.dart';

class WaterTemperaturePage extends StatelessWidget with ExtensionMixin {
  final RobotConfig config;
  final String? tempSensorName;
  final String? movementSensorName;

  const WaterTemperaturePage({
    super.key,
    this.tempSensorName,
    this.movementSensorName,
    required this.config,
  });

  @override
  Widget build(BuildContext context) => BlocProvider<WaterTemperatureCubit>(
        create: (context) => getIt<WaterTemperatureCubit>()
          ..init(
            locationId: config.location,
            robotName: config.name,
            tempSensorName: tempSensorName,
            movementSensorName: movementSensorName,
          ),
        child: BlocBuilder<WaterTemperatureCubit, WaterTemperatureScreenState>(
          builder: _builder,
        ),
      );

  Widget _builder(
    BuildContext context,
    WaterTemperatureScreenState state,
  ) =>
      state.maybeWhen(
        loading: WaterTemperatureScreenLoadingBody.new,
        loaded: WaterTemperatureScreenLoadedBody.new,
        orElse: SizedBox.shrink,
      );
}
