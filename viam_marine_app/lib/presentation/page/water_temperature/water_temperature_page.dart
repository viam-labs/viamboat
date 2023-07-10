import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/domain/app_viam/model/robot_config.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/analytics_common/analytics_common_error_page.dart';
import 'package:viam_marine/presentation/page/water_temperature/body/water_temperature_screen_loaded_body.dart';
import 'package:viam_marine/presentation/page/water_temperature/body/water_temperature_screen_loading_body.dart';
import 'package:viam_marine/presentation/page/water_temperature/cubit/water_temperature_cubit.dart';
import 'package:viam_marine/presentation/page/water_temperature/cubit/water_temperature_state.dart';

@RoutePage()
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
        loaded: (waterTemperatureData) => WaterTemperatureScreenLoadedBody(
          waterTemperatureData: waterTemperatureData,
        ),
        error: () => AnalyticsCommonErrorPage(
          title: Strings.of(context).water_temp_screen_title,
          onTap: () => context.read<WaterTemperatureCubit>().init(
                locationId: config.location,
                robotName: config.name,
                tempSensorName: tempSensorName,
                movementSensorName: movementSensorName,
              ),
        ),
        orElse: SizedBox.shrink,
      );
}
