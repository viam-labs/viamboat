import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';
import 'package:viam_marine/domain/data_viam/model/fuel_consumption_over_time.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/analytics_tile_common_body/analytcis_tile_common_body.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/analytics_tile_common_body/analytics_tile_empty_state.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/charts_common/chart_current_value.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/charts_common/chart_tile_tappable_area.dart';
import 'package:viam_marine/presentation/routing/router.gr.dart';
import 'package:viam_marine/presentation/widgets/charts/viam_bar_chart.dart';
import 'package:viam_marine/style/number_formats.dart';
import 'package:viam_marine/utils/charts_constants.dart';
import 'package:viam_marine/utils/date_time_formatter.dart';

class FuelConsumptionOverTimeLoadedBody extends StatelessWidget with ExtensionMixin {
  final List<FuelConsumptionOverTime> fuelConsumptionOverTime;
  final double yAxisMaxValue;
  final String locationId;
  final String robotName;
  final String? fuelSensorName;

  const FuelConsumptionOverTimeLoadedBody({
    super.key,
    this.fuelSensorName,
    required this.fuelConsumptionOverTime,
    required this.yAxisMaxValue,
    required this.locationId,
    required this.robotName,
  });

  @override
  Widget build(BuildContext context) => ChartTileTappableArea(
        onTap: fuelConsumptionOverTime.isEmpty ? null : () => _navigateToFuelConsumptionOverTimePage(context),
        child: AnalyticsTileCommonBody(
          title: Strings.of(context).fuel_consumption_over_time_chart_tile_title(fuelSensorName ?? ''),
          iconPath: Assets.images.svg.icons.fuel.path,
          child: fuelConsumptionOverTime.isEmpty
              ? const AnalyticsTileEmptyState(isChart: true)
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ChartCurrentValue(
                      formattedValueText: _getFormattedValue(
                        context,
                        fuelConsumptionOverTime.last.value,
                      ),
                    ),
                    ViamBarChart(
                      data: fuelConsumptionOverTime,
                      variables: _getChartVariables(context),
                    ),
                  ],
                ),
        ),
      );

  Map<String, Variable<FuelConsumptionOverTime, dynamic>> _getChartVariables(BuildContext context) => {
        ChartsConstants.variableDate: Variable(
          accessor: (FuelConsumptionOverTime data) => data.date.toString(),
          scale: OrdinalScale(
            inflate: false,
            tickCount: 10,
            formatter: (dateString) => DateTimeFormatter.hourFromDate(
              DateTime.parse(dateString),
            ),
          ),
        ),
        ChartsConstants.variableFuelOverTime: Variable(
          accessor: (FuelConsumptionOverTime data) => data.value,
          scale: LinearScale(
            min: 0,
            max: yAxisMaxValue,
            formatter: (value) => ViamNumberFormats.analyticsCurrentValue.format(value),
          ),
        ),
      };

  String _getFormattedValue(BuildContext context, num value) =>
      Strings.of(context).fuel_consumption_over_time_chart_tile_current_value(
        ViamNumberFormats.analyticsCurrentValue.format(value),
      );

  int get index => fuelConsumptionOverTime.length - 1;

  void _navigateToFuelConsumptionOverTimePage(BuildContext context) =>
      AutoRouter.of(context).push(FuelConsumptionOverTimeRoute(
        locationId: locationId,
        robotName: robotName,
      ));
}
