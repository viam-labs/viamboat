import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';
import 'package:viam_marine/domain/data_viam/model/depth_over_time.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/charts_common/chart_current_value.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/charts_common/viam_line_chart.dart';
import 'package:viam_marine/presentation/widgets/app_bar/viam_app_bar.dart';
import 'package:viam_marine/style/number_formats.dart';
import 'package:viam_marine/utils/charts_constants.dart';
import 'package:viam_marine/utils/date_time_formatter.dart';

double index = 0;
final depthOverTime = [
  DepthOverTime(date: DateTime(2023, 14, 4, 9, 30), depth: 3),
  DepthOverTime(date: DateTime(2023, 14, 4, 10, 00), depth: 2),
  DepthOverTime(date: DateTime(2023, 14, 4, 10, 30), depth: 3),
  DepthOverTime(date: DateTime(2023, 14, 4, 11, 00), depth: 3),
  DepthOverTime(date: DateTime(2023, 14, 4, 11, 30), depth: 10),
  DepthOverTime(date: DateTime(2023, 14, 4, 12, 00), depth: 1),
  DepthOverTime(date: DateTime(2023, 14, 4, 12, 30), depth: 3),
  DepthOverTime(date: DateTime(2023, 14, 4, 13, 00), depth: 2),
  DepthOverTime(date: DateTime(2023, 14, 4, 13, 30), depth: 1),
];

class DepthOverTimePage extends StatefulWidget {
  const DepthOverTimePage({super.key});

  @override
  State<DepthOverTimePage> createState() => _DepthOverTimePageState();
}

class _DepthOverTimePageState extends State<DepthOverTimePage> {
  late StreamController<GestureEvent> gestureStreamController;
  late StreamController<Selected?> selectionStreamController;
  late int index;

  @override
  void initState() {
    super.initState();
    gestureStreamController = StreamController<GestureEvent>.broadcast();
    selectionStreamController = StreamController<Selected?>.broadcast();
    index = depthOverTime.length - 1;

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
  Widget build(BuildContext context) => Scaffold(
        appBar: ViamAppBar(
          title: Strings.of(context).depth_over_time_chart_tile_title,
          leading: BackButton(
            onPressed: AutoRouter.of(context).pop,
            color: context.getColors().darkBlue1,
          ),
        ),
        body: ColoredBox(
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
                    data: depthOverTime,
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
        ),
      );

  String _getCurrentDepthString(BuildContext context) => Strings.of(context).depth_over_time_chart_tile_current_depth(
        ViamNumberFormats.sensor.format((depthOverTime[index].depth)),
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
            max: 10,
          ),
        ),
      };
}
