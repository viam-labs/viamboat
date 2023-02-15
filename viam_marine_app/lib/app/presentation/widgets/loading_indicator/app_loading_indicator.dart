import 'package:flutter/cupertino.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:flutter/material.dart';

class AppLoadingIndicator extends StatelessWidget with ExtensionMixin {
  final Color? color;
  final double? strokeWidth;
  final bool isIos;

  const AppLoadingIndicator({
    this.color,
    this.strokeWidth,
    this.isIos = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Center(
        child: isIos ? const CupertinoActivityIndicator() : CircularProgressIndicator(
          strokeWidth: strokeWidth ?? 4.0,
          color: color ?? context.getColors().mainLightBlue,
        ),
      );
}
