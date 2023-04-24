import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/analytics/body/analytics_loaded_body.dart';
import 'package:viam_marine/presentation/page/analytics/cubit/analytics_cubit.dart';
import 'package:viam_marine/presentation/page/analytics/cubit/analytics_state.dart';
import 'package:viam_marine/presentation/widgets/app_bar/viam_app_bar.dart';
import 'package:viam_marine/presentation/widgets/loading_indicator/app_loading_indicator.dart';

class AnalyticsPage extends StatelessWidget with ExtensionMixin {
  const AnalyticsPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<AnalyticsCubit>(
        create: (context) => getIt<AnalyticsCubit>()..init(),
        child: Scaffold(
          //Temporary title TODO: update it when known
          appBar: const ViamAppBar(title: 'Analytics Page'),
          body: SafeArea(
            child: BlocBuilder<AnalyticsCubit, AnalyticsState>(
              builder: _builder,
            ),
          ),
        ),
      );

  Widget _builder(BuildContext context, AnalyticsState state) => state.maybeWhen(
        loaded: (analyticsTypes) => AnalyticsLoadedBody(analyticsTypes: analyticsTypes),
        loading: () => const AppLoadingIndicator(),
        orElse: () => const SizedBox.shrink(),
      );
}
