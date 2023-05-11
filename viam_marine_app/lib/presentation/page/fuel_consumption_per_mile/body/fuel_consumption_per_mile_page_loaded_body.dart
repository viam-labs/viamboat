import 'dart:async';

import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';
import 'package:viam_marine/domain/data_viam/model/fuel_cunsumption_per_mile.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/charts_common/chart_current_value.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/charts_common/viam_line_chart.dart';
import 'package:viam_marine/style/number_formats.dart';
import 'package:viam_marine/utils/charts_constants.dart';
import 'package:viam_marine/utils/date_time_formatter.dart';

class FuelConsumptionPerMilePageLoadedBody extends StatefulWidget {
  final List<FuelConsumptionPerMile> fuelConsumptionPerMile;
  final double yAxisMaxValue;

  const FuelConsumptionPerMilePageLoadedBody({
    super.key,
    required this.fuelConsumptionPerMile,
    required this.yAxisMaxValue,
  });

  @override
  State<FuelConsumptionPerMilePageLoadedBody> createState() => _FuelConsumptionPerMilePageLoadedBodyState();
}

class _FuelConsumptionPerMilePageLoadedBodyState extends State<FuelConsumptionPerMilePageLoadedBody> {
  late StreamController<GestureEvent> gestureStreamController;
  late StreamController<Selected?> selectionStreamController;
  late int index;

  @override
  void initState() {
    super.initState();
    gestureStreamController = StreamController<GestureEvent>.broadcast();
    selectionStreamController = StreamController<Selected?>.broadcast();
    index = widget.fuelConsumptionPerMile.length - 1;

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
                widget.fuelConsumptionPerMile[index].value,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              reverse: true,
              child: SizedBox(
                width: 1000,
                child: ViamLineChart(
                  data: widget.fuelConsumptionPerMile,
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

  String _getFormattedValue(BuildContext context, num value) =>
      Strings.of(context).fuel_consumption_per_mile_chart_tile_current_value(
        ViamNumberFormats.graphicalSensor.format(
          value,
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
}
