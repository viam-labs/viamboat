import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/assets.gen.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/presentation/page/boat_list/cubit/boat_list_cubit.dart';
import 'package:viam_marine/app/presentation/routing/router.gr.dart';
import 'package:viam_marine/app/presentation/widgets/loading_indicator/app_loading_indicator.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

const offset = Offset(0, 2);

class BoatListBody extends StatelessWidget {
  final List<ViamBoat> boats;
  final String? currentBoatId;
  final bool isLoading;

  const BoatListBody({
    required this.boats,
    required this.isLoading,
    this.currentBoatId,
    super.key,
  });

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                BackButton(color: context.getColors().blue),
                const Spacer(),
                Text(
                  Strings.of(context).boats,
                  style: AppTypography.bodySemibold.copyWith(
                    color: context.getColors().black,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => _goToAddBoat(context),
                  child: SvgPicture.asset(Assets.images.svg.icons.plusAdd.path),
                ),
              ],
            ),
            const SizedBox(height: Dimens.m),
            !isLoading
                ? Expanded(
                    child: ListView.separated(
                      separatorBuilder: (_, __) => const SizedBox(height: Dimens.l),
                      itemBuilder: (context, index) => _BoatTile(
                        boats[index],
                        currentBoatId,
                      ),
                      itemCount: boats.length,
                      shrinkWrap: true,
                    ),
                  )
                : const AppLoadingIndicator(),
          ],
        ),
      );

  Future<void> _goToAddBoat(BuildContext context) => AutoRouter.of(context).push(AddBoatRoute(showWelcomeText: false));
}

class _BoatTile extends StatelessWidget {
  final ViamBoat boat;
  final String? currentBoatId;

  const _BoatTile(
    this.boat,
    this.currentBoatId,
  );

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => context.read<BoatListCubit>().changeBoat(
              boat.id,
            ),
        child: Padding(
          padding: const EdgeInsets.all(Dimens.xm),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: const EdgeInsets.all(Dimens.m),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(Dimens.m),
                  ),
                  border: currentBoatId == boat.id
                      ? Border.all(
                          width: Dimens.xxxs,
                          color: context.getColors().blue,
                        )
                      : null,
                  color: context.getColors().mainWhite,
                  boxShadow: [
                    BoxShadow(
                      color: context.getColors().shadow,
                      blurRadius: 24,
                      spreadRadius: 3,
                      offset: offset,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: boat.boatPhotoImagePath != null
                          ? FileImage(
                              File(boat.boatPhotoImagePath!),
                            )
                          : Assets.images.illustrations.placeholder.boatImagePlaceholder.provider(),
                      radius: 26,
                    ),
                    const SizedBox(width: Dimens.m),
                    Text(
                      boat.name,
                      style: AppTypography.bodyMedium.copyWith(
                        overflow: TextOverflow.ellipsis,
                        color: context.getColors().black,
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset(Assets.images.svg.icons.rightArrow.path),
                  ],
                ),
              ),
              Positioned(
                right: -Dimens.s,
                top: Dimens.zero,
                child: currentBoatId == boat.id
                    ? SvgPicture.asset(Assets.images.svg.icons.selected.path)
                    : const SizedBox.shrink(),
              ),
            ],
          ),
        ),
      );
}
