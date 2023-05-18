import 'dart:async';

import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/style/dimens.dart';
import 'package:viam_marine/utils/charts_constants.dart';

class ViamLineChart<T> extends StatelessWidget with ExtensionMixin {
  final List<T> data;
  final Map<String, Variable<T, dynamic>> variables;
  final RectCoord? coord;
  final bool? reverseAreaGradientColors;
  final StreamController<GestureEvent>? gestureStreamController;
  final StreamController<Selected?>? selectionStreamController;
  final int? currentIndex;

  const ViamLineChart({
    super.key,
    this.coord,
    this.reverseAreaGradientColors,
    this.gestureStreamController,
    this.selectionStreamController,
    this.currentIndex,
    required this.data,
    required this.variables,
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
          data: data,
          coord: coord ??
              RectCoord(
                horizontalRange: ChartsConstants.coordDefaultHorizontalRange,
                verticalRange: ChartsConstants.coordDefaultVerticalRange,
              ),
          variables: variables,
          marks: [
            _getAreaMark(context),
            _getLineMark(context),
            _getGradientPointMark(context),
            _getWhitePointMark(context),
          ],
          axes: _getAxesList(context),
          selections: _selections,
          gestureStream: gestureStreamController,
        ),
      );

  AreaMark _getAreaMark(BuildContext context) => AreaMark(
        shape: ShapeEncode(
          value: BasicAreaShape(smooth: true),
        ),
        gradient: GradientEncode(
          value: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: _getAreaGradientColorsList(context),
          ),
        ),
      );

  List<Color> _getAreaGradientColorsList(BuildContext context) {
    if (reverseAreaGradientColors != null && reverseAreaGradientColors == true) {
      return _getGradientColors(context).reversed.toList(growable: false);
    } else {
      return _getGradientColors(context);
    }
  }

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
        selectionStream: selectionStreamController,
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
        selectionStream: selectionStreamController,
      );

  LineMark _getLineMark(BuildContext context) => LineMark(
        size: SizeEncode(value: Dimens.xxs + Dimens.xxxs),
        gradient: GradientEncode(
          value: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              context.getColors().lightBlue2,
              context.getColors().lightBlue1,
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
          on: gestureStreamController == null && selectionStreamController == null
              ? {}
              : {
                  GestureType.scaleUpdate,
                  GestureType.tapDown,
                  GestureType.longPressMoveUpdate,
                },
          dim: Dim.x,
        )
      };

  List<Color> _getGradientColors(BuildContext context) => [
        context.getColors(listen: false).lightBlue3.withOpacity(0.1),
        context.getColors(listen: false).lightBlue3.withOpacity(0),
      ];

  int get index => currentIndex ?? data.length - 1;
}
