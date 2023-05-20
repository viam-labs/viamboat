import 'package:flutter/material.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/style/dimens.dart';

class MapMarkerBody extends StatelessWidget with ExtensionMixin {
  final Color? color;

  const MapMarkerBody({
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        height: Dimens.markerSize,
        width: Dimens.markerSize,
        padding: const EdgeInsets.all(Dimens.markerPadding),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: context.getColors().mainWhite,
          ),
        ),
      );
}
