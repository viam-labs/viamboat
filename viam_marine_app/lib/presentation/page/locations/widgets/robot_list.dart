import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/presentation/page/locations/cubit/locations_page_cubit.dart';
import 'package:viam_marine/presentation/widgets/common_list_tile/common_list_tile.dart';
import 'package:viam_marine/style/dimens.dart';

class RobotList extends StatelessWidget {
  final List<ViamAppRobot> robots;
  const RobotList({
    super.key,
    required this.robots,
  });

  @override
  Widget build(BuildContext context) => ListView.separated(
        itemBuilder: (context, index) => CommonListTile(
          title: robots[index].name,
          onTap: () => context.read<LocationsPageCubit>().connectToRobot(robots[index]),
        ),
        separatorBuilder: (context, index) => const SizedBox(height: Dimens.s),
        itemCount: robots.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
      );
}
