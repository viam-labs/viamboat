import 'package:flutter/material.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/style/dimens.dart';

const offset = Offset(0, 2);

class CommonSensorBody extends StatelessWidget with ExtensionMixin {
  final Widget child;
  final EdgeInsetsGeometry padding;

  const CommonSensorBody({
    required this.child,
    required this.padding,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: context.getColors().mainWhite,
          borderRadius: const BorderRadius.all(
            Radius.circular(Dimens.m),
          ),
          boxShadow: [
            BoxShadow(
              color: context.getColors().shadow,
              blurRadius: 24,
              spreadRadius: 3,
              offset: offset,
            ),
          ],
        ),
        padding: padding,
        child: child,
      );
}
