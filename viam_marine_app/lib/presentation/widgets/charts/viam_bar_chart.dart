import 'dart:async';

import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/style/dimens.dart';
import 'package:viam_marine/utils/charts_constants.dart';

class ViamBarChart<T> extends StatelessWidget with ExtensionMixin {
  final List<T> data;
  final Map<String, Variable<T, dynamic>> variables;
  final StreamController<GestureEvent>? gestureStreamController;
  final StreamController<Selected?>? selectionStreamController;
  final int? currentIndex;

  const ViamBarChart({
    super.key,
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
          coord: RectCoord(
            horizontalRange: [0.0, 0.9],
            verticalRange: [0.05, 0.9],
          ),
          variables: variables,
          marks: [
            _getIntervalMark(context),
          ],
          axes: _getAxesList(context),
          selections: _selections,
          gestureStream: gestureStreamController,
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
          updaters: {
            ChartsConstants.tapEvent: {
              true: (_) => LinearGradient(
                    colors: [
                      context.getColors(listen: false).lightBlue2,
                      context.getColors(listen: false).lightBlue2,
                    ],
                  )
            }
          },
          value: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              context.getColors(listen: false).darkBlue2,
              context.getColors(listen: false).darkBlue1,
            ],
          ),
        ),
        selected: {
          ChartsConstants.tapEvent: {index}
        },
        selectionStream: selectionStreamController,
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
                  GestureType.tapDown,
                },
          dim: Dim.x,
        )
      };

  int get index => currentIndex ?? data.length - 1;
}
