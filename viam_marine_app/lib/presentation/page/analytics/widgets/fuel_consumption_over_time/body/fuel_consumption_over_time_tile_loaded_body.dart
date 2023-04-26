import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';
import 'package:viam_marine/domain/data_viam/model/fuel_consumption_over_time.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/analytics_tile_common_body/analytcis_tile_common_body.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/charts_common/chart_current_value.dart';
import 'package:viam_marine/style/dimens.dart';
import 'package:viam_marine/style/number_formats.dart';
import 'package:viam_marine/utils/charts_constants.dart';
import 'package:viam_marine/utils/date_time_formatter.dart';

class FuelConsumptionOverTimeLoadedBody extends StatelessWidget with ExtensionMixin {
  final List<FuelConsumptionOverTime> fuelConsumptionOverTime;
  final double yAxisMaxValue;

  const FuelConsumptionOverTimeLoadedBody({
    super.key,
    required this.fuelConsumptionOverTime,
    required this.yAxisMaxValue,
  });

  @override
  Widget build(BuildContext context) => AnalyticsTileCommonBody(
        title: Strings.of(context).fuel_consumption_over_time_chart_tile_title,
        iconPath: Assets.images.svg.icons.fuel.path,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ChartCurrentValue(
              formattedValueText: _getFormattedValue(
                context,
                fuelConsumptionOverTime.last.value,
              ),
            ),
            Container(
              height: ChartsConstants.chartHeight,
              margin: const EdgeInsets.only(
                right: Dimens.xl,
                top: Dimens.s,
                bottom: Dimens.l,
              ),
              child: Chart(
                padding: (_) => EdgeInsets.zero,
                data: fuelConsumptionOverTime,
                coord: RectCoord(
                  horizontalRange: [0.0, 0.9],
                  verticalRange: [0.05, 0.9],
                ),
                variables: _getChartVariables(context),
                marks: [
                  _getIntervalMark(context),
                ],
                axes: _getAxesList(context),
                selections: _selections,
              ),
            )
          ],
        ),
      );

  IntervalMark _getIntervalMark(BuildContext context) => IntervalMark(
        shape: ShapeEncode(
          value: RectShape(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(Dimens.s),
              topRight: Radius.circular(Dimens.s),
            ),
          ),
        ),
        size: SizeEncode(value: Dimens.s),
        gradient: GradientEncode(
          value: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              context.getColors().darkBlue2,
              context.getColors().darkBlue1,
            ],
          ),
        ),
      );

  Map<String, Variable<FuelConsumptionOverTime, dynamic>> _getChartVariables(BuildContext context) => {
        ChartsConstants.variableDate: Variable(
          accessor: (FuelConsumptionOverTime data) => data.date.toString(),
          scale: OrdinalScale(
            inflate: false,
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
            formatter: (value) => _getFormattedValue(context, value).replaceAll(' ', '').toUpperCase(),
          ),
        ),
      };

  String _getFormattedValue(BuildContext context, num value) =>
      Strings.of(context).fuel_consumption_over_time_chart_tile_current_value(
        ViamNumberFormats.graphicalSensor.format(value),
      );

  List<AxisGuide<dynamic>> _getAxesList(BuildContext context) => [
        Defaults.horizontalAxis..line = null,
        Defaults.verticalAxis
          ..flip = true
          ..position = 1
          ..grid = PaintStyle(
            strokeColor: context.getColors().lightBlue,
            strokeWidth: 1,
          ),
      ];

  Map<String, Selection>? get _selections => {
        ChartsConstants.tapEvent: PointSelection(
          on: {},
          dim: Dim.x,
        )
      };

  int get index => fuelConsumptionOverTime.length - 1;
}
