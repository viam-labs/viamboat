import 'dart:async';

import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';
import 'package:viam_marine/domain/data_viam/model/fuel_consumption_over_time.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/charts_common/chart_current_value.dart';
import 'package:viam_marine/presentation/widgets/charts/viam_bar_chart.dart';
import 'package:viam_marine/style/dimens.dart';
import 'package:viam_marine/style/number_formats.dart';
import 'package:viam_marine/utils/charts_constants.dart';
import 'package:viam_marine/utils/date_time_formatter.dart';

class FuelConsumptionOverTimePageLoadedBody extends StatefulWidget {
  final List<FuelConsumptionOverTime> fuelConsumptionOverTime;
  final double yAxisMaxValue;

  const FuelConsumptionOverTimePageLoadedBody({
    super.key,
    required this.fuelConsumptionOverTime,
    required this.yAxisMaxValue,
  });

  @override
  State<FuelConsumptionOverTimePageLoadedBody> createState() => _FuelConsumptionOverTimePageLoadedBodyState();
}

class _FuelConsumptionOverTimePageLoadedBodyState extends State<FuelConsumptionOverTimePageLoadedBody> {
  late StreamController<GestureEvent> gestureStreamController;
  late StreamController<Selected?> selectionStreamController;
  late int index;

  @override
  void initState() {
    super.initState();
    gestureStreamController = StreamController<GestureEvent>.broadcast();
    selectionStreamController = StreamController<Selected?>.broadcast();
    index = widget.fuelConsumptionOverTime.length - 1;

    selectionStreamController.stream.listen((event) {
      if (event != null) {
        index = event.entries.first.value.first;
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    gestureStreamController.close();
    selectionStreamController.close();
  }

  @override
  Widget build(BuildContext context) => ColoredBox(
        color: context.getColors().mainWhite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ChartCurrentValue(
              formattedValueText: _getFormattedValue(
                context,
                widget.fuelConsumptionOverTime[index].value,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              reverse: true,
              child: Container(
                width: 1000,
                padding: const EdgeInsets.only(right: Dimens.m),
                child: ViamBarChart(
                  data: widget.fuelConsumptionOverTime,
                  variables: _getChartVariables(context),
                  gestureStreamController: gestureStreamController,
                  selectionStreamController: selectionStreamController,
                  currentIndex: index,
                ),
              ),
            ),
          ],
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
            max: widget.yAxisMaxValue,
            formatter: (value) => _getFormattedValue(context, value).replaceAll(' ', '').toUpperCase(),
          ),
        ),
      };

  String _getFormattedValue(BuildContext context, num value) =>
      Strings.of(context).fuel_consumption_over_time_chart_tile_current_value(
        ViamNumberFormats.graphicalSensor.format(value),
      );
}
