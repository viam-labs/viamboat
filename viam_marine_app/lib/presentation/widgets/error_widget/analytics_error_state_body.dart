import 'package:flutter/material.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/style/app_typography.dart';

class AnalyticsErrorStateBody extends StatelessWidget with ExtensionMixin {
  const AnalyticsErrorStateBody({super.key});

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            Strings.of(context).analytics_tile_error_body_title,
            textAlign: TextAlign.center,
            style: AppTypography.body.copyWith(
              color: context.getColors().grey,
            ),
          ),
          Text(
            Strings.of(context).analytics_tile_error_body_refresh,
            textAlign: TextAlign.center,
            style: AppTypography.body.copyWith(
              color: context.getColors().darkBlue1,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      );
}
