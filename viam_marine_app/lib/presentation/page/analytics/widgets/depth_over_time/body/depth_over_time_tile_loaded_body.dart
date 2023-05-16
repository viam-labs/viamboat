import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';
import 'package:viam_marine/domain/data_viam/model/depth_over_time.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/analytics_tile_common_body/analytcis_tile_common_body.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/charts_common/chart_current_value.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/charts_common/chart_tile_tappable_area.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/charts_common/viam_line_chart.dart';
import 'package:viam_marine/presentation/routing/router.gr.dart';
import 'package:viam_marine/style/dimens.dart';
import 'package:viam_marine/style/number_formats.dart';
import 'package:viam_marine/utils/charts_constants.dart';
import 'package:viam_marine/utils/date_time_formatter.dart';

class DepthOverTimeLoadedBody extends StatelessWidget with ExtensionMixin {
  final List<DepthOverTime> depthOverTime;
  final double yAxisMaxValue;

  const DepthOverTimeLoadedBody({
    super.key,
    required this.depthOverTime,
    required this.yAxisMaxValue,
  });

  @override
  Widget build(BuildContext context) => ChartTileTappableArea(
        onTap: () => AutoRouter.of(context).push(const DepthOverTimeRoute()),
        child: AnalyticsTileCommonBody(
          title: Strings.of(context).depth_over_time_chart_tile_title,
          iconPath: Assets.images.svg.icons.depthIcon.path,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ChartCurrentValue(
                formattedValueText: _getCurrentDepthString(context),
              ),
              const SizedBox(height: Dimens.xm),
              ViamLineChart(
                data: depthOverTime,
                variables: _getChartVariables(),
                coord: RectCoord(
                  horizontalRange: [0, 0.9],
                  verticalRange: [0.99, 0.1],
                ),
                reverseAreaGradientColors: true,
              ),
            ],
          ),
        ),
      );

  String _getCurrentDepthString(BuildContext context) => Strings.of(context).depth_over_time_chart_tile_current_depth(
        ViamNumberFormats.sensor.format((depthOverTime.last.depth)),
      );

  Map<String, Variable<DepthOverTime, dynamic>> _getChartVariables() => {
        ChartsConstants.variableDate: Variable(
          accessor: (DepthOverTime data) => data.date.toString(),
          scale: OrdinalScale(
            inflate: false,
            formatter: (dateString) => DateTimeFormatter.hourFromDate(
              DateTime.parse(dateString),
            ),
          ),
        ),
        ChartsConstants.variableDepth: Variable(
          accessor: (DepthOverTime date) => date.depth,
          scale: LinearScale(
            min: 0,
            max: yAxisMaxValue,
          ),
        ),
      };
}
