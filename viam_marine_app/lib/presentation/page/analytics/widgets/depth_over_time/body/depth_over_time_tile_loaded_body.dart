import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/analytics_tile_common_body/analytcis_tile_common_body.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/style/dimens.dart';
import 'package:viam_marine/style/number_formats.dart';
import 'package:viam_marine/utils/charts_constants.dart';
import 'package:viam_marine/utils/date_time_formatter.dart';

class DepthOverTime {
  final DateTime date;
  final double depth;

  const DepthOverTime({
    required this.date,
    required this.depth,
  });
}

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

class DepthOverTimeLoadedBody extends StatelessWidget with ExtensionMixin {
  const DepthOverTimeLoadedBody({super.key});

  @override
  Widget build(BuildContext context) => AnalyticsTileCommonBody(
        title: Strings.of(context).depth_over_time_chart_tile_title,
        iconPath: Assets.images.svg.icons.depthIcon.path,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: Dimens.s,
                top: Dimens.l,
                bottom: Dimens.xm,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    Strings.of(context).depth_over_time_chart_tile_current,
                    style: AppTypography.body.copyWith(
                      color: context.getColors().black,
                    ),
                  ),
                  const SizedBox(width: Dimens.s),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 2,
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      color: context.getColors().blue,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      Strings.of(context).depth_over_time_chart_tile_current_depth(
                        ViamNumberFormats.sensor.format(
                          (depthOverTime[index].depth),
                        ),
                      ),
                      style: AppTypography.body.copyWith(
                        color: context.getColors().mainWhite,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 208,
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
            ),
          ],
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
            max: 10,
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
        size: SizeEncode(value: Dimens.xs),
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
          dim: Dim.x,
        )
      };

  int get index => depthOverTime.length - 1;
}
