import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_per_mile/body/fuel_consumption_per_mile_loaded_body.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_per_mile/body/fuel_consumption_per_mile_loading_body.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_per_mile/cubit/fuel_consumption_per_mile_cubit.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_per_mile/cubit/fuel_consumption_per_mile_state.dart';

class FuelConsumptionPerMileTile extends StatelessWidget {
  const FuelConsumptionPerMileTile({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<FuelConsumptionPerMileCubit>(
        create: (context) => getIt<FuelConsumptionPerMileCubit>()..init(),
        child: BlocBuilder<FuelConsumptionPerMileCubit, FuelConsumptionPerMileState>(
          builder: _builder,
        ),
      );

  Widget _builder(
    BuildContext context,
    FuelConsumptionPerMileState state,
  ) =>
      state.maybeWhen(
        loading: () => const FuelConsumptionPerMileLoadingBody(),
        loaded: (data, maxValue) => FuelConsumptionPerMileLoadedBody(
          fuelConsumptionPerMileData: data,
          maxYAxisValue: maxValue,
        ),
        orElse: () => const SizedBox.shrink(),
      );
}
