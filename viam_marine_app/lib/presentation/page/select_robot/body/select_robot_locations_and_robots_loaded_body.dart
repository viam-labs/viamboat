import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_location.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_robot.dart';
import 'package:viam_marine/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/select_robot/body/select_robot_body.dart';
import 'package:viam_marine/presentation/page/select_robot/cubit/select_robot_cubit.dart';
import 'package:viam_marine/presentation/page/select_robot/widgets/robots_list.dart';
import 'package:viam_marine/presentation/widgets/app_bar/viam_app_bar.dart';
import 'package:viam_marine/presentation/widgets/empty_state/empty_state_widget.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/style/dimens.dart';

class SelectRobotLocationsAndRobotsLoadedBody extends StatelessWidget with ExtensionMixin {
  final List<ViamAppLocation> locations;
  final List<ViamAppRobot> robots;
  final String organizationName;
  final List<ViamBoat> boats;

  const SelectRobotLocationsAndRobotsLoadedBody({
    super.key,
    required this.boats,
    required this.locations,
    required this.robots,
    required this.organizationName,
  });

  @override
  Widget build(BuildContext context) => SelectRobotPageBody(
        appBar: ViamAppBar(
          title: Strings.of(context).select_robot_page_loaded_loc_and_robots_title(organizationName),
          leading: BackButton(
            onPressed: context.read<SelectRobotCubit>().goToOrganizations,
            color: context.getColors().darkBlue1,
          ),
        ),
        body: locations.isEmpty
            ? EmptyStateWidget(
                title: Strings.of(context).select_robot_page_loaded_loc_and_robots_empty_loc_title,
                subtitle: Strings.of(context).select_robot_page_loaded_loc_and_robots_empty_loc_subtitle,
                iconPath: Assets.images.svg.icons.connectionError.path,
              )
            : ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: Dimens.m,
                    horizontal: Dimens.m,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(Assets.images.svg.icons.organization.path),
                          const SizedBox(width: Dimens.s),
                          Expanded(
                            child: Text(
                              locations[index].name,
                              style: AppTypography.bodyMedium.copyWith(
                                color: context.getColors().black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: Dimens.m),
                      RobotsList(
                        robots: robots.where((robot) => robot.location == locations[index].id).toList(growable: false),
                        boats: boats,
                      ),
                    ],
                  ),
                ),
                itemCount: locations.length,
                shrinkWrap: true,
              ),
      );
}
