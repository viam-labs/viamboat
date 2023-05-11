import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';
import 'package:viam_marine/domain/data_viam/model/fuel_cunsumption_per_mile.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/analytics_tile_common_body/analytcis_tile_common_body.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/charts_common/chart_current_value.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/charts_common/viam_line_chart.dart';
import 'package:viam_marine/presentation/routing/router.gr.dart';
import 'package:viam_marine/style/number_formats.dart';
import 'package:viam_marine/utils/charts_constants.dart';
import 'package:viam_marine/utils/date_time_formatter.dart';

class FuelConsumptionPerMileLoadedBody extends StatelessWidget with ExtensionMixin {
  final List<FuelConsumptionPerMile> fuelConsumptionPerMileData;
  final double maxYAxisValue;

  const FuelConsumptionPerMileLoadedBody({
    super.key,
    required this.fuelConsumptionPerMileData,
    required this.maxYAxisValue,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => AutoRouter.of(context).push(const FuelConsumptionPerMileRoute()),
        child: AnalyticsTileCommonBody(
          title: Strings.of(context).fuel_consumption_per_mile_chart_tile_title,
          iconPath: Assets.images.svg.icons.fuel.path,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ChartCurrentValue(
                formattedValueText: _getFormattedValue(
                  context,
                  fuelConsumptionPerMileData.last.value,
                ),
              ),
              ViamLineChart(
                data: fuelConsumptionPerMileData,
                variables: _getChartVariables(context),
              ),
            ],
          ),
        ),
      );

  Map<String, Variable<FuelConsumptionPerMile, dynamic>> _getChartVariables(BuildContext context) => {
        ChartsConstants.variableDate: Variable(
          accessor: (FuelConsumptionPerMile data) => data.date.toString(),
          scale: OrdinalScale(
            inflate: false,
            formatter: (dateString) => DateTimeFormatter.hourFromDate(
              DateTime.parse(dateString),
            ),
          ),
        ),
        ChartsConstants.variableFuelPerMile: Variable(
          accessor: (FuelConsumptionPerMile data) => data.value,
          scale: LinearScale(
            min: 0,
            max: 400,
            formatter: (value) => _getFormattedValue(context, value).replaceAll(' ', '').toUpperCase(),
          ),
        ),
      };

  String _getFormattedValue(BuildContext context, num value) =>
      Strings.of(context).fuel_consumption_per_mile_chart_tile_current_value(
        ViamNumberFormats.graphicalSensor.format(
          value,
        ),
      );
}
