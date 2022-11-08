import 'package:flutter/material.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

part 'top_info/common_tile_body_top_info.dart';

class CommonTileBody extends StatelessWidget with ExtensionMixin {
  final Widget child;
  final double childHeight;
  final String title;
  final String? subtitle;

  const CommonTileBody({
    required this.child,
    required this.childHeight,
    required this.title,
    this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: context.getColors().mainGrey,
          ),
          borderRadius: BorderRadius.circular(Dimens.s),
          color: context.getColors().mainWhite,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _CommonTileBodyTopInfo(
              title,
              subtitle,
            ),
            Container(
              height: childHeight,
              margin: const EdgeInsets.all(Dimens.xxxs),
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(Dimens.s),
                ),
                child: child,
              ),
            ),
          ],
        ),
      );
}
