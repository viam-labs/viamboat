import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:viam_marine/domain/app_viam/model/viam_app_organization.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/select_robot/body/select_robot_body.dart';
import 'package:viam_marine/presentation/page/select_robot/cubit/select_robot_cubit.dart';
import 'package:viam_marine/presentation/widgets/app_bar/viam_app_bar.dart';
import 'package:viam_marine/presentation/widgets/buttons/viam_standard_button.dart';
import 'package:viam_marine/presentation/widgets/common_list_tile/common_list_tile.dart';
import 'package:viam_marine/presentation/widgets/empty_state/empty_state_widget.dart';
import 'package:viam_marine/style/dimens.dart';

class SelectRobotLoadedOrganizationsBody extends StatelessWidget with ExtensionMixin {
  final List<ViamAppOrganization> organizations;
  final bool isAutoConnectOn;

  const SelectRobotLoadedOrganizationsBody({
    super.key,
    required this.organizations,
    required this.isAutoConnectOn,
  });

  @override
  Widget build(BuildContext context) => SelectRobotPageBody(
        appBar: ViamAppBar(
          title: Strings.of(context).select_robot_page_organizations,
          leading: isAutoConnectOn
              ? null
              : BackButton(
                  onPressed: context.router.pop,
                  color: context.getColors().darkBlue1,
                ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.m,
            vertical: Dimens.s,
          ),
          child: Column(
            children: [
              Expanded(
                child: organizations.isEmpty
                    ? EmptyStateWidget(
                        //TODO: Change icon when designs ready
                        iconPath: Assets.images.svg.icons.connectionError.path,
                        title: Strings.of(context).select_robot_page_organizations_empty_state_title,
                        subtitle: Strings.of(context).select_robot_page_organizations_empty_state_subtitle,
                      )
                    : ListView.separated(
                        itemBuilder: (context, index) => CommonListTile(
                          title: organizations[index].name,
                          leading: SvgPicture.asset(Assets.images.svg.icons.organization.path),
                          onTap: () => context.read<SelectRobotCubit>().selectOrganization(organizations[index].id),
                        ),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) => const SizedBox(height: Dimens.m),
                        itemCount: organizations.length,
                      ),
              ),
              ViamStandardButton(
                isActive: true,
                title: Strings.of(context).logout,
                onTap: context.read<SelectRobotCubit>().logout,
              ),
            ],
          ),
        ),
      );
}
