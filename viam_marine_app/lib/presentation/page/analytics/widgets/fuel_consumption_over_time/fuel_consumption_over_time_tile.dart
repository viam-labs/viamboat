import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/analytics_tile_common_body/analytics_tile_error_body.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_over_time/body/fuel_consumption_over_time_tile_loaded_body.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_over_time/body/fuel_consumption_over_time_tile_loading_body.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_over_time/cubit/fuel_consumption_over_time_cubit.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_over_time/cubit/fuel_consumption_over_time_state.dart';
import 'package:viam_marine/utils/fuel_consumption_name_formatter.dart';

class FuelConsumptionOverTimeTile extends StatelessWidget {
  final String locationId;
  final String robotName;
  final String? fuelSensorName;
  final String? movementSensorName;

  const FuelConsumptionOverTimeTile({
    super.key,
    this.fuelSensorName,
    this.movementSensorName,
    required this.locationId,
    required this.robotName,
  });

  @override
  Widget build(BuildContext context) => BlocProvider<FuelConsumptionOverTimeCubit>(
        create: (context) => getIt<FuelConsumptionOverTimeCubit>()
          ..init(
            locationId,
            robotName,
            fuelSensorName,
            movementSensorName,
          ),
        child: BlocBuilder<FuelConsumptionOverTimeCubit, FuelConsumptionOverTimeState>(
          builder: _builder,
        ),
      );

  Widget _builder(
    BuildContext context,
    FuelConsumptionOverTimeState state,
  ) =>
      state.maybeWhen(
        loading: () => FuelConsumptionOverTimeLoadingBody(
          fuelSensorName: formatFuelConsumptionName(fuelSensorName),
        ),
        loaded: (data, yAxisMaxValue) => FuelConsumptionOverTimeLoadedBody(
          fuelConsumptionOverTime: data,
          yAxisMaxValue: yAxisMaxValue,
          locationId: locationId,
          robotName: robotName,
          fuelSensorName: fuelSensorName,
          movementSensorName: movementSensorName,
        ),
        error: () => AnalyticsTileErrorBody(
          title: Strings.of(context)
              .fuel_consumption_over_time_chart_tile_title(formatFuelConsumptionName(fuelSensorName) ?? ''),
          iconPath: Assets.images.svg.icons.depthIcon.path,
          isChart: true,
          onTap: () => context.read<FuelConsumptionOverTimeCubit>().init(
                locationId,
                robotName,
                fuelSensorName,
                movementSensorName,
              ),
        ),
        orElse: () => const SizedBox.shrink(),
      );
}
