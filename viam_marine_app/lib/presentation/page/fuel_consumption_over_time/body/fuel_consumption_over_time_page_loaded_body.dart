import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphic/graphic.dart';
import 'package:viam_marine/domain/data_viam/model/fuel_consumption_over_time.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/charts_common/chart_current_value.dart';
import 'package:viam_marine/presentation/page/fuel_consumption_over_time/cubit/fuel_consumption_over_time_page_cubit.dart';
import 'package:viam_marine/presentation/widgets/charts/viam_bar_chart.dart';
import 'package:viam_marine/style/dimens.dart';
import 'package:viam_marine/style/number_formats.dart';
import 'package:viam_marine/utils/charts_constants.dart';
import 'package:viam_marine/utils/date_time_formatter.dart';

class FuelConsumptionOverTimePageLoadedBody extends StatefulWidget {
  final List<FuelConsumptionOverTime> fuelConsumptionOverTime;
  final double yAxisMaxValue;
  final bool isBackButtonActive;
  final bool isForwardButtonActive;

  const FuelConsumptionOverTimePageLoadedBody({
    super.key,
    required this.fuelConsumptionOverTime,
    required this.yAxisMaxValue,
    required this.isBackButtonActive,
    required this.isForwardButtonActive,
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
        final int pickedIndex = event.entries.first.value.first;

        if (pickedIndex > widget.fuelConsumptionOverTime.length) {
          index = widget.fuelConsumptionOverTime.length - 1;
        } else {
          index = pickedIndex;
        }
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
  Widget build(BuildContext context) => Container(
        color: context.getColors().mainWhite,
        padding: const EdgeInsets.symmetric(horizontal: Dimens.s),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ChartCurrentValue(
              formattedValueText: _getFormattedValue(
                context,
                index > widget.fuelConsumptionOverTime.length ? 0 : widget.fuelConsumptionOverTime[index].value,
              ),
            ),
            ViamBarChart(
              data: widget.fuelConsumptionOverTime,
              variables: _getChartVariables(context),
              gestureStreamController: gestureStreamController,
              selectionStreamController: selectionStreamController,
              currentIndex: index > widget.fuelConsumptionOverTime.length ? 0 : index,
            ),
            _buildButtons(),
          ],
        ),
      );

  Widget _buildButtons() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: widget.isBackButtonActive ? _onBackButtonPressed : null,
            icon: Icon(
              Icons.arrow_back_ios,
              color: widget.isBackButtonActive ? context.getColors().darkBlue1 : context.getColors().grey2,
            ),
          ),
          IconButton(
            onPressed: widget.isForwardButtonActive ? _onForwardButtonPressed : null,
            icon: Icon(
              Icons.arrow_forward_ios,
              color: widget.isForwardButtonActive ? context.getColors().darkBlue1 : context.getColors().grey2,
            ),
          )
        ],
      );

  void _onBackButtonPressed() {
    index = 0;
    context.read<FuelConsumptionOverTimePageCubit>().onBackButtonPressed();
  }

  void _onForwardButtonPressed() {
    index = 0;
    context.read<FuelConsumptionOverTimePageCubit>().onForwardButtonPressed();
  }

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
            niceRange: true,
            formatter: (value) => ViamNumberFormats.analyticsCurrentValue.format(value),
          ),
        ),
      };

  String _getFormattedValue(BuildContext context, num value) =>
      Strings.of(context).fuel_consumption_over_time_chart_tile_current_value(
        ViamNumberFormats.analyticsCurrentValue.format(value),
      );
}
