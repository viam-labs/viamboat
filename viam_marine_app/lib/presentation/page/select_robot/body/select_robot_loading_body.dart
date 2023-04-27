import 'package:flutter/material.dart';
import 'package:viam_marine/presentation/page/select_robot/body/select_robot_body.dart';
import 'package:viam_marine/presentation/widgets/loading_indicator/app_loading_indicator.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/style/dimens.dart';

class SelectRobotLoadingBody extends StatelessWidget {
  final String loaderText;

  const SelectRobotLoadingBody({
    super.key,
    required this.loaderText,
  });

  @override
  Widget build(BuildContext context) => SelectRobotPageBody(
        body: Column(
          children: [
            const Spacer(),
            const AppLoadingIndicator(),
            const SizedBox(height: Dimens.m),
            Text(
              loaderText,
              style: AppTypography.bodyMedium,
            ),
            const Spacer(),
          ],
        ),
      );
}
