import 'package:flutter/material.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_location.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/presentation/page/locations/widgets/robot_list.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/style/dimens.dart';

class LocationsPageBody extends StatelessWidget with ExtensionMixin {
  final List<ViamAppLocation> locations;
  final List<ViamAppRobot> robots;

  const LocationsPageBody({
    super.key,
    required this.locations,
    required this.robots,
  });

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Dimens.m,
            horizontal: Dimens.m,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                locations[index].name,
                style: AppTypography.bodySemibold.copyWith(
                  color: context.getColors().black,
                ),
              ),
              const SizedBox(height: Dimens.m),
              RobotList(
                robots: robots.where((robot) => robot.location == locations[index].id).toList(growable: false),
              ),
            ],
          ),
        ),
        itemCount: locations.length,
        shrinkWrap: true,
      );
}
