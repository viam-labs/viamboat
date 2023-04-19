import 'package:flutter/material.dart';
import 'package:viam_marine/domain/data_viam/model/depth_over_time.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/analytics_tile_common_body/analytcis_tile_common_body.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/depth_over_time/widgets/current_depth_info.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/depth_over_time/widgets/depth_over_time_chart.dart';

class DepthOverTimeLoadedBody extends StatelessWidget with ExtensionMixin {
  final List<DepthOverTime> depthOverTime;
  final double yAxisMaxValue;

  const DepthOverTimeLoadedBody({
    super.key,
    required this.depthOverTime,
    required this.yAxisMaxValue,
  });

  @override
  Widget build(BuildContext context) => AnalyticsTileCommonBody(
        title: Strings.of(context).depth_over_time_chart_tile_title,
        iconPath: Assets.images.svg.icons.depthIcon.path,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CurrentDepthInfo(
              depthOverTime: depthOverTime.last,
            ),
            DepthOverTimeChart(
              depthOverTime: depthOverTime,
              yAxisMaxValue: yAxisMaxValue,
            ),
          ],
        ),
      );
}
