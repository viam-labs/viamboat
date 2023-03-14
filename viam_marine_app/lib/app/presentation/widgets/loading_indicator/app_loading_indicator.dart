import 'package:flutter/cupertino.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:flutter/material.dart';

class AppLoadingIndicator extends StatelessWidget with ExtensionMixin {
  final Color? color;
  final double? strokeWidth;
  final bool isIos;
  final double? size;

  const AppLoadingIndicator({
    this.color,
    this.strokeWidth,
    this.isIos = false,
    this.size,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final loader = isIos
        ? const CupertinoActivityIndicator()
        : CircularProgressIndicator(
            strokeWidth: strokeWidth ?? 4.0,
            color: color ?? context.getColors().lightBlue1,
          );

    if (size != null) {
      return Center(
        child: SizedBox(width: size, height: size, child: loader),
      );
    } else {
      return Center(child: loader);
    }
  }
}
