import 'package:flutter/material.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/style/dimens.dart';

class MapPopupBody extends StatelessWidget with ExtensionMixin {
  final Widget child;

  const MapPopupBody({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.only(bottom: Dimens.xs),
        decoration: BoxDecoration(
          color: context.getColors().mainWhite,
          borderRadius: BorderRadius.circular(Dimens.m),
        ),
        child: Padding(
          padding: const EdgeInsets.all(
            Dimens.s,
          ),
          child: child,
        ),
      );
}
