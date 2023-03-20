import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/injectable/injectable.dart';
import 'package:viam_marine/app/presentation/page/analytics/body/analytics_loaded_body.dart';
import 'package:viam_marine/app/presentation/page/analytics/cubit/analytics_cubit.dart';
import 'package:viam_marine/app/presentation/page/analytics/cubit/analytics_state.dart';
import 'package:viam_marine/app/presentation/widgets/app_bar/viam_app_bar.dart';

class AnalyticsPage extends StatelessWidget with ExtensionMixin {
  const AnalyticsPage({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<AnalyticsCubit>(
        create: (context) => getIt<AnalyticsCubit>(),
        child: Scaffold(
          //Temporary title TODO: update it when known
          appBar: const ViamAppBar(title: 'Analytics Page'),
          body: BlocBuilder<AnalyticsCubit, AnalyticsState>(
            builder: _builder,
          ),
        ),
      );

  Widget _builder(BuildContext context, AnalyticsState state) => state.maybeWhen(
        loaded: AnalyticsLoadedBody.new,
        orElse: () => const SizedBox.shrink(),
      );
}
