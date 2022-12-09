import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:flutter/material.dart';

class AppLoadingIndicator extends StatelessWidget with ExtensionMixin {
  const AppLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) => Center(
        child: CircularProgressIndicator(
          color: context.getColors().mainLightBlue,
        ),
      );
}
