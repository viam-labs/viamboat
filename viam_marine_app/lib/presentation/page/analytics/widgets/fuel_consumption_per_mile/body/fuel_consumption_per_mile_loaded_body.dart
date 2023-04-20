import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/analytics_tile_common_body/analytcis_tile_common_body.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/charts_common/chart_current_value.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/charts_common/viam_line_chart.dart';
import 'package:viam_marine/style/number_formats.dart';
import 'package:viam_marine/utils/charts_constants.dart';
import 'package:viam_marine/utils/date_time_formatter.dart';

class FuelConsumptionPerMile {
  final DateTime date;
  final double fuelConsumptionPerMile;

  const FuelConsumptionPerMile({required this.date, required this.fuelConsumptionPerMile});
}

final List<FuelConsumptionPerMile> fuelConsumptions = [
  FuelConsumptionPerMile(
    date: DateTime(2023, 14, 4, 9, 30),
    fuelConsumptionPerMile: 90,
  ),
  FuelConsumptionPerMile(
    date: DateTime(2023, 14, 4, 10, 00),
    fuelConsumptionPerMile: 100,
  ),
  FuelConsumptionPerMile(
    date: DateTime(2023, 14, 4, 10, 30),
    fuelConsumptionPerMile: 160,
  ),
  FuelConsumptionPerMile(
    date: DateTime(2023, 14, 4, 11, 00),
    fuelConsumptionPerMile: 200,
  ),
  FuelConsumptionPerMile(
    date: DateTime(2023, 14, 4, 11, 30),
    fuelConsumptionPerMile: 70,
  ),
  FuelConsumptionPerMile(
    date: DateTime(2023, 14, 4, 12, 00),
    fuelConsumptionPerMile: 350,
  ),
  FuelConsumptionPerMile(
    date: DateTime(2023, 14, 4, 12, 30),
    fuelConsumptionPerMile: 300,
  ),
  FuelConsumptionPerMile(
    date: DateTime(2023, 14, 4, 13, 00),
    fuelConsumptionPerMile: 400,
  ),
  FuelConsumptionPerMile(
    date: DateTime(2023, 14, 4, 13, 30),
    fuelConsumptionPerMile: 143,
  ),
];

class FuelConsumptionPerMileLoadedBody extends StatelessWidget with ExtensionMixin {
  const FuelConsumptionPerMileLoadedBody({super.key});

  @override
  Widget build(BuildContext context) => AnalyticsTileCommonBody(
        title: Strings.of(context).fuel_consumption_per_mile_chart_tile_title,
        iconPath: Assets.images.svg.icons.fuel.path,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ChartCurrentValue(
              formattedValueText: _getFormattedValue(
                context,
                fuelConsumptions.last.fuelConsumptionPerMile,
              ),
            ),
            ViamLineChart(
              data: fuelConsumptions,
              variables: _getChartVariables(context),
            ),
          ],
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
          accessor: (FuelConsumptionPerMile data) => data.fuelConsumptionPerMile,
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
