import 'dart:async';

import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';
import 'package:viam_marine/domain/data_viam/model/depth_over_time.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/charts_common/chart_current_value.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/charts_common/viam_line_chart.dart';
import 'package:viam_marine/style/number_formats.dart';
import 'package:viam_marine/utils/charts_constants.dart';
import 'package:viam_marine/utils/date_time_formatter.dart';

class DepthOverTimePageLoadedBody extends StatefulWidget {
  final List<DepthOverTime> depthOverTime;
  final double yAxisMaxValue;

  const DepthOverTimePageLoadedBody({
    super.key,
    required this.depthOverTime,
    required this.yAxisMaxValue,
  });

  @override
  State<DepthOverTimePageLoadedBody> createState() => _DepthOverTimePageLoadedBodyState();
}

class _DepthOverTimePageLoadedBodyState extends State<DepthOverTimePageLoadedBody> {
  late StreamController<GestureEvent> gestureStreamController;
  late StreamController<Selected?> selectionStreamController;
  late int index;

  @override
  void initState() {
    super.initState();
    gestureStreamController = StreamController<GestureEvent>.broadcast();
    selectionStreamController = StreamController<Selected?>.broadcast();
    index = widget.depthOverTime.length - 1;

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
              formattedValueText: _getCurrentDepthString(context),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              reverse: true,
              child: SizedBox(
                width: 1000,
                child: ViamLineChart(
                  data: widget.depthOverTime,
                  variables: _getChartVariables(),
                  coord: RectCoord(
                    horizontalRange: [0, 0.9],
                    verticalRange: [0.99, 0.1],
                  ),
                  reverseAreaGradientColors: true,
                  gestureStreamController: gestureStreamController,
                  selectionStreamController: selectionStreamController,
                  currentIndex: index,
                ),
              ),
            ),
          ],
        ),
      );

  String _getCurrentDepthString(BuildContext context) => Strings.of(context).depth_over_time_chart_tile_current_depth(
        ViamNumberFormats.sensor.format((widget.depthOverTime[index].depth)),
      );

  Map<String, Variable<DepthOverTime, dynamic>> _getChartVariables() => {
        ChartsConstants.variableDate: Variable(
          accessor: (DepthOverTime data) => data.date.toString(),
          scale: OrdinalScale(
            inflate: false,
            tickCount: widget.depthOverTime.length ~/ 2,
            formatter: (dateString) => DateTimeFormatter.hourFromDate(
              DateTime.parse(dateString),
            ),
          ),
        ),
        ChartsConstants.variableDepth: Variable(
          accessor: (DepthOverTime date) => date.depth,
          scale: LinearScale(
            min: 0,
            max: widget.yAxisMaxValue,
          ),
        ),
      };
}
