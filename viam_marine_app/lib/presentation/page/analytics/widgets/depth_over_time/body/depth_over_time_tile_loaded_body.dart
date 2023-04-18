import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/presentation/page/analytics/widgets/analytics_tile_common_body/analytcis_tile_common_body.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/style/dimens.dart';

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
        //TODO: Implement this
        title: 'Depth over time',
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
                    "Current:",
                    style: AppTypography.body.copyWith(
                      color: context.getColors().black,
                    ),
                  ),
                  const SizedBox(width: Dimens.s),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                    decoration: BoxDecoration(
                      color: context.getColors().blue,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      '${depthOverTime[index].depth}m',
                      style: AppTypography.body.copyWith(
                        color: context.getColors().mainWhite,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 210,
              margin: const EdgeInsets.only(
                right: 40,
                top: 16,
                bottom: 21,
              ),
              child: Chart(
                padding: (p0) => EdgeInsets.zero,
                data: depthOverTime,
                coord: RectCoord(
                  horizontalRange: [0.05, 0.9],
                  verticalRange: [0.99, 0.1],
                ),
                variables: {
                  'date': Variable(
                    accessor: (DepthOverTime date) => date.date.toString(),
                    scale: OrdinalScale(
                      inflate: false,
                      formatter: (p0) {
                        final date = DateTime.parse(p0);
                        return '${date.hour}:${date.minute}';
                      },
                    ),
                  ),
                  'depth': Variable(
                    accessor: (DepthOverTime date) => date.depth,
                    scale: LinearScale(
                      min: 0,
                      max: 10,
                    ),
                  ),
                },
                marks: [
                  _getlineMark(context),
                  PointMark(
                    shape: ShapeEncode(
                      value: CircleShape(
                        hollow: false,
                      ),
                    ),
                    size: SizeEncode(value: 18),
                    gradient: GradientEncode(
                      updaters: {
                        'tap': {
                          false: (color) => const LinearGradient(
                                colors: [
                                  Colors.transparent,
                                  Colors.transparent,
                                ],
                              )
                        }
                      },
                      value: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff07B7EB),
                          Color(0xff0187AE),
                        ],
                      ),
                    ),
                    selected: {
                      'tap': {index}
                    },
                  ),
                  PointMark(
                    size: SizeEncode(value: 7),
                    selected: {
                      'tap': {index}
                    },
                    color: ColorEncode(
                      value: Colors.white,
                      updaters: {
                        'tap': {false: (color) => Colors.transparent}
                      },
                    ),
                  ),
                ],
                axes: _getAxesList(context),
                selections: _selections,
                annotations: null,
              ),
            ),
          ],
        ),
      );

  LineMark _getlineMark(BuildContext context) => LineMark(
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
        'tap': PointSelection(
          dim: Dim.x,
        )
      };

  int get index => depthOverTime.length - 1;
}
