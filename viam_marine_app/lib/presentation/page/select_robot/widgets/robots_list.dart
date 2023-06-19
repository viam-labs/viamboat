import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/select_robot/cubit/select_robot_cubit.dart';
import 'package:viam_marine/presentation/widgets/common_list_tile/common_list_tile.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/style/dimens.dart';

class RobotsList extends StatelessWidget {
  final List<ViamAppRobot> robots;
  final List<ViamBoat> boats;
  final String? currentRobotId;

  const RobotsList({
    super.key,
    this.currentRobotId,
    required this.boats,
    required this.robots,
  });

  @override
  Widget build(BuildContext context) => robots.isEmpty
      ? Center(
          child: Text(
            Strings.of(context).select_robot_page_loaded_loc_and_robots_empty_robots,
            textAlign: TextAlign.center,
            style: AppTypography.body.copyWith(
              color: context.getColors().grey,
            ),
          ),
        )
      : ListView.separated(
          itemBuilder: (context, index) {
            final boat = _getboat(index);
            return CommonListTile(
              isSelected: currentRobotId == robots[index].id,
              leading: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: boat?.boatPhotoImagePath != null
                      ? Image.file(
                          File(boat!.boatPhotoImagePath!),
                          height: 32,
                          width: 32,
                          fit: BoxFit.fill,
                        )
                      : Image(
                          image: Assets.images.illustrations.placeholder.boatImagePlaceholder.provider(),
                          height: 32,
                          width: 32,
                          fit: BoxFit.fill,
                        ),
                ),
              ),
              title: robots[index].name,
              onTap: () => _onRobotTap(
                context,
                robots[index],
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: Dimens.m),
          itemCount: robots.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
        );

  Future<void> _onRobotTap(
    BuildContext context,
    ViamAppRobot robot,
  ) =>
      currentRobotId == robot.id
          ? AutoRouter.of(context).pop()
          : context.read<SelectRobotCubit>().connectToRobot(robot);

  ViamBoat? _getboat(int index) => boats.firstWhereOrNull((boat) => boat.id == robots[index].id);
}
