import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/locations/cubit/locations_page_cubit.dart';
import 'package:viam_marine/presentation/page/select_robot/cubit/select_robot_cubit.dart';
import 'package:viam_marine/presentation/widgets/common_list_tile/common_list_tile.dart';
import 'package:viam_marine/presentation/widgets/empty_state/empty_state_widget.dart';
import 'package:viam_marine/style/dimens.dart';

class RobotList extends StatelessWidget {
  final List<ViamAppRobot> robots;
  const RobotList({
    super.key,
    required this.robots,
  });

  @override
  Widget build(BuildContext context) => robots.isEmpty
      ? EmptyStateWidget(
          title: Strings.of(context).locations_page_robot_empty_state_title,
          subtitle: Strings.of(context).locations_page_robot_empty_state_subtitle,
          iconPath: Assets.images.svg.icons.connectionError.path,
        )
      : ListView.separated(
          itemBuilder: (context, index) => CommonListTile(
            title: robots[index].name,
            onTap: () => context.read<SelectRobotCubit>().connectToRobot(robots[index]),
          ),
          separatorBuilder: (context, index) => const SizedBox(height: Dimens.s),
          itemCount: robots.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
        );
}
