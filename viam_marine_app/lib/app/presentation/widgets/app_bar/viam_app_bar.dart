import 'package:flutter/material.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/style/app_typography.dart';

class ViamAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  const ViamAppBar({
    super.key,
    required this.title,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) => AppBar(
      title: Text(
        title,
        style: AppTypography.bodySemibold.copyWith(
          color: context.getColors().black,
        ),
      ),
      elevation: 0,
      backgroundColor: context.getColors().transparent,
      centerTitle: true,
    );
}
