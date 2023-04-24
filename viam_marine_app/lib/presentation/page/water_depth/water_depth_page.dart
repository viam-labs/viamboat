import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/water_depth/body/water_depth_screen_loaded_body.dart';
import 'package:viam_marine/presentation/page/water_depth/body/water_depth_screen_loading_body.dart';
import 'package:viam_marine/presentation/page/water_depth/cubit/water_depth_cubit.dart';
import 'package:viam_marine/presentation/page/water_depth/cubit/water_depth_state.dart';

class WaterDepthPage extends StatelessWidget with ExtensionMixin {
  const WaterDepthPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<WaterDepthCubit>(
        create: (context) => getIt<WaterDepthCubit>()..init(),
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
