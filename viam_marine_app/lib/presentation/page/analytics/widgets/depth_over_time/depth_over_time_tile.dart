import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/depth_over_time/body/depth_over_time_tile_loaded_body.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/depth_over_time/body/depth_over_time_tile_loading_body.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/depth_over_time/cubit/depth_over_time_cubit.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/depth_over_time/cubit/depth_over_time_state.dart';

class DepthOverTimeTile extends StatelessWidget {
  const DepthOverTimeTile({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<DepthOverTimeCubit>(
        create: (context) => getIt<DepthOverTimeCubit>()..init(),
        child: BlocBuilder<DepthOverTimeCubit, DepthOverTimeState>(
          builder: _builder,
        ),
      );

  Widget _builder(
    BuildContext context,
    DepthOverTimeState state,
  ) =>
      state.maybeWhen(
        loading: () => const DepthOverTimeLoadingBody(),
        loaded: (depthOverTime, yAxisMaxValue) => DepthOverTimeLoadedBody(
          depthOverTime: depthOverTime,
          yAxisMaxValue: yAxisMaxValue,
        ),
        orElse: () => const SizedBox.shrink(),
      );
}
