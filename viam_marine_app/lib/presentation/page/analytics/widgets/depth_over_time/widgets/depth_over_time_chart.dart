import 'package:flutter/material.dart';
import 'package:viam_marine/domain/data_viam/model/depth_over_time.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:graphic/graphic.dart';
import 'package:viam_marine/style/dimens.dart';
import 'package:viam_marine/utils/charts_constants.dart';
import 'package:viam_marine/utils/date_time_formatter.dart';

class DepthOverTimeChart extends StatelessWidget with ExtensionMixin {
  final List<DepthOverTime> depthOverTime;
  final double yAxisMaxValue;

  const DepthOverTimeChart({
    super.key,
    required this.depthOverTime,
    required this.yAxisMaxValue,
  });

  @override
  Widget build(BuildContext context) => Container(
        height: ChartsConstants.chartHeight,
        margin: const EdgeInsets.only(
          right: Dimens.xl,
          top: Dimens.s,
          bottom: Dimens.l,
        ),
        child: Chart(
          padding: (_) => EdgeInsets.zero,
          data: depthOverTime,
          coord: RectCoord(
            horizontalRange: [0.05, 0.9],
            verticalRange: [0.99, 0.1],
          ),
          variables: _getChartVariables(),
          marks: [
            _getLineMark(context),
            _getGradientPointMark(context),
            _getWhitePointMark(context),
          ],
          axes: _getAxesList(context),
          selections: _selections,
        ),
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

  PointMark _getWhitePointMark(BuildContext context) => PointMark(
        size: SizeEncode(
          value: ChartsConstants.whitePointSize,
        ),
        selected: {
          ChartsConstants.tapEvent: {index}
        },
        color: ColorEncode(
          value: context.getColors(listen: false).mainWhite,
          updaters: {
            ChartsConstants.tapEvent: {
              false: (_) => context.getColors(listen: false).transparent,
            }
          },
        ),
      );

  PointMark _getGradientPointMark(BuildContext context) => PointMark(
        size: SizeEncode(
          value: ChartsConstants.gradientPointSize,
        ),
        gradient: GradientEncode(
          updaters: {
            ChartsConstants.tapEvent: {
              false: (_) => LinearGradient(
                    colors: [
                      context.getColors(listen: false).transparent,
                      context.getColors(listen: false).transparent,
                    ],
                  )
            }
          },
          value: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              context.getColors(listen: false).lightBlue2,
              context.getColors(listen: false).lightBlue1,
            ],
          ),
        ),
        selected: {
          ChartsConstants.tapEvent: {index}
        },
      );

  LineMark _getLineMark(BuildContext context) => LineMark(
        size: SizeEncode(value: Dimens.xxs + Dimens.xxxs),
        gradient: GradientEncode(
          value: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              context.getColors().lightBlue1,
              context.getColors().lightBlue2,
            ],
          ),
        ),
        shape: ShapeEncode(
          value: BasicLineShape(smooth: true),
        ),
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

  int get index => depthOverTime.length - 1;
}
