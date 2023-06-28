import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/domain/app_viam/model/robot_config.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/injectable/injectable.dart';
import 'package:viam_marine/presentation/page/analytics/body/analytics_loaded_body.dart';
import 'package:viam_marine/presentation/page/analytics/cubit/analytics_cubit.dart';
import 'package:viam_marine/presentation/page/analytics/cubit/analytics_state.dart';
import 'package:viam_marine/presentation/widgets/app_bar/viam_app_bar.dart';
import 'package:viam_marine/presentation/widgets/error_widget/error_state_widget.dart';
import 'package:viam_marine/presentation/widgets/loading_indicator/app_loading_indicator.dart';

class AnalyticsPage extends StatelessWidget with ExtensionMixin {
  final RobotConfig config;
  final List<String?> sensorNames;

  const AnalyticsPage({
    super.key,
    required this.sensorNames,
    required this.config,
  });

  @override
  Widget build(BuildContext context) => BlocProvider<AnalyticsCubit>(
        create: (context) => getIt<AnalyticsCubit>()..init(sensorNames),
        child: Scaffold(
          appBar: ViamAppBar(
            title: Strings.of(context).analytics_page_title,
          ),
          body: SafeArea(
            child: BlocBuilder<AnalyticsCubit, AnalyticsState>(
              builder: _builder,
            ),
          ),
        ),
      );

  Widget _builder(BuildContext context, AnalyticsState state) => state.maybeWhen(
        loaded: (analyticsData) => AnalyticsLoadedBody(
          analyticsData: analyticsData,
          config: config,
        ),
        error: () => ErrorStateWidget(
          iconPath: Assets.images.svg.icons.connectionError.path,
          title: Strings.of(context).error_something_went_wrong,
          subtitle: Strings.of(context).error_occured,
          onTap: () => context.read<AnalyticsCubit>().init(sensorNames),
          buttonText: Strings.of(context).analytics_tile_error_body_refresh,
        ),
        loading: () => const AppLoadingIndicator(),
        orElse: () => const SizedBox.shrink(),
      );
}
