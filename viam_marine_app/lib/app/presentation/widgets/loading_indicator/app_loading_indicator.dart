import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:flutter/material.dart';

class AppLoadingIndicator extends StatelessWidget with ExtensionMixin {
  final Color? color;
  final double? strokeWidth;

  const AppLoadingIndicator({
    this.color,
    this.strokeWidth,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Center(
        child: CircularProgressIndicator(
          strokeWidth: strokeWidth ?? 4.0,
          color: color ?? context.getColors().mainLightBlue,
        ),
      );
}
