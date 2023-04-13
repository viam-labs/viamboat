import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_per_time/body/fuel_consumption_per_time_tile_loaded_body.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_per_time/body/fuel_consumption_per_time_tile_loading_body.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_per_time/cubit/fuel_consumption_per_time_cubit.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/fuel_consumption_per_time/cubit/fuel_consumption_per_time_state.dart';

class FuelConsumptionPerTimeTile extends StatelessWidget {
  const FuelConsumptionPerTimeTile({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<FuelConsumptionPerTimeCubit>(
        create: (context) => getIt<FuelConsumptionPerTimeCubit>(),
        child: BlocBuilder<FuelConsumptionPerTimeCubit, FuelConsumptionPerTimeState>(
          builder: _builder,
        ),
      );

  Widget _builder(
    BuildContext context,
    FuelConsumptionPerTimeState state,
  ) =>
      state.maybeWhen(
        loading: () => const FuelConsumptionPerTimeLoadingBody(),
        loaded: () => const FuelConsumptionPerTimeLoadedBody(),
        orElse: () => const SizedBox.shrink(),
      );
}
