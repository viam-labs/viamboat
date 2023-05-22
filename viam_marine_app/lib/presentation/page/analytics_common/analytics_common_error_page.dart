import 'package:flutter/material.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/presentation/widgets/app_bar/viam_app_bar.dart';
import 'package:viam_marine/presentation/widgets/error_widget/analytics_error_state_body.dart';

class AnalyticsCommonErrorPage extends StatelessWidget with ExtensionMixin {
  final String title;
  final VoidCallback? onTap;

  const AnalyticsCommonErrorPage({
    super.key,
    this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: ViamAppBar(
          title: title,
          leading: BackButton(
            color: context.getColors().darkBlue1,
          ),
        ),
        body: Center(
          child: GestureDetector(
            onTap: onTap,
            child: const AnalyticsErrorStateBody(),
          ),
        ),
      );
}
