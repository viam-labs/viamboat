import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_over_time/body/fuel_consumption_over_time_tile_loaded_body.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_over_time/body/fuel_consumption_over_time_tile_loading_body.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_over_time/cubit/fuel_consumption_over_time_cubit.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_over_time/cubit/fuel_consumption_over_time_state.dart';

class FuelConsumptionOverTimeTile extends StatelessWidget {
  final String locationId;
  final String robotName;

  const FuelConsumptionOverTimeTile({
    super.key,
    required this.locationId,
    required this.robotName,
  });

  @override
  Widget build(BuildContext context) => BlocProvider<FuelConsumptionOverTimeCubit>(
        create: (context) => getIt<FuelConsumptionOverTimeCubit>()
          ..init(
            locationId,
            robotName,
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
        loading: () => const FuelConsumptionOverTimeLoadingBody(),
        loaded: (data, yAxisMaxValue) => FuelConsumptionOverTimeLoadedBody(
          fuelConsumptionOverTime: data,
          yAxisMaxValue: yAxisMaxValue,
          locationId: locationId,
          robotName: robotName,
        ),
        orElse: () => const SizedBox.shrink(),
      );
}
