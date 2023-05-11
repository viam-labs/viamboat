import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/depth_over_time/body/depth_over_time_page_loaded_body.dart';
import 'package:viam_marine/presentation/page/depth_over_time/cubit/depth_over_time_page_cubit.dart';
import 'package:viam_marine/presentation/page/depth_over_time/cubit/depth_over_time_page_state.dart';
import 'package:viam_marine/presentation/widgets/app_bar/viam_app_bar.dart';
import 'package:viam_marine/presentation/widgets/loading_indicator/app_loading_indicator.dart';

class DepthOverTimePage extends StatelessWidget with AutoRouteWrapper, ExtensionMixin {
  const DepthOverTimePage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: (context) => getIt<DepthOverTimePageCubit>()..init(),
        child: this,
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: ViamAppBar(
          title: Strings.of(context).depth_over_time_chart_tile_title,
          leading: BackButton(
            onPressed: AutoRouter.of(context).pop,
            color: context.getColors().darkBlue1,
          ),
        ),
        body: BlocBuilder<DepthOverTimePageCubit, DepthOverTimePageState>(
          builder: (context, state) => state.maybeWhen(
            loading: AppLoadingIndicator.new,
            loaded: (depthOverTime, yAxisMaxValue) => DepthOverTimePageLoadedBody(
              depthOverTime: depthOverTime,
              yAxisMaxValue: yAxisMaxValue,
            ),
            orElse: SizedBox.shrink,
          ),
        ),
      );
}
