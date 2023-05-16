import 'package:flutter/material.dart';
import 'package:viam_marine/extensions/build_context_extension.dart';
import 'package:viam_marine/utils/charts_constants.dart';

class ChartTileTappableArea extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget child;

  const ChartTileTappableArea({
    super.key,
    this.onTap,
    required this.child,
  });

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          child,
          Positioned.fill(
            bottom: 0,
            right: 0,
            left: 0,
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                height: ChartsConstants.chartHeight,
                width: double.infinity,
                color: context.getColors().transparent,
              ),
            ),
          ),
        ],
      );
}
