import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/style/dimens.dart';

class CommonListTile extends StatelessWidget with ExtensionMixin {
  final VoidCallback? onTap;
  final String title;
  final Widget leading;

  const CommonListTile({
    super.key,
    this.onTap,
    required this.title,
    required this.leading,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onTap,
        child: Container(
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
                offset: const Offset(0, 2),
              ),
            ],
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.m,
            vertical: Dimens.m,
          ),
          child: Row(
            children: [
              leading,
              const SizedBox(width: Dimens.ms),
              Expanded(
                child: Text(
                  title,
                  style: AppTypography.bodyMedium.copyWith(
                    color: context.getColors().black,
                  ),
                ),
              ),
              SvgPicture.asset(Assets.images.svg.icons.rightArrow.path),
            ],
          ),
        ),
      );
}
