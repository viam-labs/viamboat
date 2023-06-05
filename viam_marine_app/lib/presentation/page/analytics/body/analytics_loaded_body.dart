import 'package:flutter/material.dart';
import 'package:viam_marine/domain/app_viam/model/robot_config.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/analytics/cubit/analytics_cubit.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/tile_wrapper/analytics_tile_body_wrapper.dart';
import 'package:viam_marine/presentation/widgets/empty_state/empty_state_widget.dart';
import 'package:viam_marine/style/dimens.dart';

class AnalyticsLoadedBody extends StatelessWidget {
  final List<AnalyticsType> analyticsTypes;
  final RobotConfig config;
  final List<String?> sensorNames;

  const AnalyticsLoadedBody({
    super.key,
    required this.sensorNames,
    required this.config,
    required this.analyticsTypes,
  });

  @override
  Widget build(BuildContext context) => analyticsTypes.isEmpty
      ? Center(
          child: EmptyStateWidget(
            title: Strings.of(context).dashboard_sensors_empty_state_title,
            subtitle: Strings.of(context).analytics_empty_state_subtitle,
            iconPath: Assets.images.svg.icons.sensorsEmptyState.path,
          ),
        )
      : ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.s),
          itemBuilder: (_, index) => AnalyticsTileBodyWrapper(
            type: analyticsTypes[index],
            config: config,
            sensorNames: sensorNames,
          ),
          separatorBuilder: (_, __) => const SizedBox(height: Dimens.m),
          itemCount: analyticsTypes.length,
        );
}
