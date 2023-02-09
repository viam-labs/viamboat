import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:viam_marine/app/domain/error/model/viam_error.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/assets.gen.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

part 'top_info/common_tile_body_top_info.dart';

const offset = Offset(0, 2);

class CommonTileBody extends StatelessWidget with ExtensionMixin {
  final Widget child;
  final double childHeight;
  final String title;
  final String? subtitle;
  final ViamError? error;

  const CommonTileBody({
    required this.child,
    required this.childHeight,
    required this.title,
    this.subtitle,
    this.error,
    super.key,
  });

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.m),
          color: error == ViamError.warning ? context.getColors().lightOrange : context.getColors().mainWhite,
          border: error != null ? Border.all(color: context.getColors().orange) : null,
          boxShadow: [
            BoxShadow(
              color: context.getColors().shadow,
              blurRadius: 24,
              spreadRadius: 3,
              offset: offset,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _CommonTileBodyTopInfo(
              title,
              subtitle,
              error,
            ),
            Container(
              height: childHeight,
              margin: const EdgeInsets.all(Dimens.s),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(Dimens.s),
                ),
                child: child,
              ),
            ),
          ],
        ),
      );
}
