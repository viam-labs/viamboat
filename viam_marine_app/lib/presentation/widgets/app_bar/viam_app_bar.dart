import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/style/app_typography.dart';

class ViamAppBar extends StatelessWidget with PreferredSizeWidget {
  final String? title;
  final TextStyle? titleTextStyle;
  final Widget? leading;
  final Widget? trailing;
  final SystemUiOverlayStyle? systemUiOverlayStyle;

  const ViamAppBar({
    super.key,
    this.leading,
    this.titleTextStyle,
    this.title,
    this.trailing,
    this.systemUiOverlayStyle,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) => AppBar(
        systemOverlayStyle: systemUiOverlayStyle ??
            const SystemUiOverlayStyle(
              statusBarColor: Colors.black,
              statusBarBrightness: Brightness.light,
            ),
        leading: leading,
        title: title != null
            ? Text(
                title!,
                style: titleTextStyle ??
                    AppTypography.bodySemibold.copyWith(
                      color: context.getColors().black,
                    ),
              )
            : null,
        elevation: 0,
        actions: trailing != null ? [trailing!] : null,
        backgroundColor: context.getColors().transparent,
        centerTitle: true,
      );
}
