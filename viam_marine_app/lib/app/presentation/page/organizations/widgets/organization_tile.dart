import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:viam_marine/app/domain/app_viam/model/viam_app_organization.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/assets.gen.dart';
import 'package:viam_marine/app/presentation/page/organizations/cubit/organizations_cubit.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

class OrganizationTile extends StatelessWidget with ExtensionMixin {
  final ViamAppOrganization organization;
  const OrganizationTile({
    super.key,
    required this.organization,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => context.read<OrganizationsCubit>().onTap(organization),
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: Dimens.m,
            vertical: Dimens.xs,
          ),
          decoration: BoxDecoration(
            color: context.getColors().mainWhite,
            borderRadius: const BorderRadius.all(
              Radius.circular(Dimens.s),
            ),
            boxShadow: [
              BoxShadow(
                color: context.getColors().shadow,
                blurRadius: 24,
                spreadRadius: 3,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.s,
            vertical: Dimens.m,
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  organization.name,
                  style: AppTypography.bodySemibold.copyWith(
                    color: context.getColors().black,
                  ),
                ),
              ),
              const Spacer(),
              SvgPicture.asset(Assets.images.svg.icons.rightArrow.path),
            ],
          ),
        ),
      );
}
