import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/style/dimens.dart';

class AnalyticsTileCommonBody extends StatelessWidget with ExtensionMixin {
  final Widget child;
  final String title;
  final String iconPath;

  const AnalyticsTileCommonBody({
    super.key,
    required this.child,
    required this.title,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.m),
          color: context.getColors().mainWhite,
          boxShadow: [
            BoxShadow(
              color: context.getColors().shadow,
              blurRadius: 24,
              spreadRadius: 3,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: Dimens.s,
                top: Dimens.s,
                right: Dimens.s,
              ),
              child: Row(
                children: [
                  SvgPicture.asset(iconPath),
                  Expanded(
                    child: Text(
                      title,
                      style: AppTypography.bodySemibold.copyWith(
                        color: context.getColors().black,
                      ),
                    ),
                  ),
                  SvgPicture.asset(Assets.images.svg.icons.rightArrow.path),
                ],
              ),
            ),
            Container(
              height: 190,
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
