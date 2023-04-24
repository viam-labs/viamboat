import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/water_temperature/body/water_temperature_tile_loaded_body.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/water_temperature/body/water_temperature_tile_loading_body.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/water_temperature/cubit/water_temperature_tile_cubit.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/water_temperature/cubit/water_temperature_tile_state.dart';

class WaterTemperatureTile extends StatelessWidget with ExtensionMixin {
  const WaterTemperatureTile({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<WaterTemperatureCubit>(
        create: (context) => getIt<WaterTemperatureCubit>()..init(),
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
        loaded: WaterTemperatureTileLoadedBody.new,
        orElse: SizedBox.shrink,
      );
}
