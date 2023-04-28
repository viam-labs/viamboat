import 'package:flutter/material.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/select_robot/body/select_robot_body.dart';
import 'package:viam_marine/presentation/widgets/error_widget/error_state_widget.dart';

class SelectRobotErrorBody extends StatelessWidget {
  final String subtitle;
  final VoidCallback onTap;

  const SelectRobotErrorBody({
    super.key,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) => SelectRobotPageBody(
        body: ErrorStateWidget(
          iconPath: Assets.images.svg.icons.connectionError.path,
          title: Strings.of(context).error_something_went_wrong,
          onTap: onTap,
          buttonText: Strings.of(context).try_again,
          subtitle: subtitle,
        ),
      );
}
