import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/assets.gen.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/presentation/page/dashboard/widgets/drawer/cubit/viam_drawer_cubit.dart';
import 'package:viam_marine/app/presentation/routing/router.gr.dart';
import 'package:viam_marine/app/presentation/widgets/loading_indicator/app_loading_indicator.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

const offset = Offset(0, 2);

class ViamDrawerBody extends StatelessWidget {
  final List<ViamBoat> boats;
  final bool isLoading;

  const ViamDrawerBody({
    required this.boats,
    required this.isLoading,
    super.key,
  });

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Dimens.xm),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Spacer(),
                  Text(
                    Strings.of(context).boats,
                    style: AppTypography.bodySemibold.copyWith(
                      color: context.getColors().black,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () => _goToAddBoat(context),
                    icon: Icon(
                      Icons.add,
                      color: context.getColors().blue,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: Dimens.xxl),
              !isLoading
                  ? Expanded(
                    child: ListView.separated(
                        separatorBuilder: (_, __) => const SizedBox(height: Dimens.l),
                        itemBuilder: (context, index) => _BoatTile(boats.first),
                        itemCount: boats.length + 100,
                        shrinkWrap: true,
                      ),
                  )
                  : const AppLoadingIndicator(),
            ],
          ),
        ),
      );

  Future<void> _goToAddBoat(BuildContext context) => AutoRouter.of(context).push(AddBoatRoute(showWelcomeText: false));
}

class _BoatTile extends StatelessWidget {
  final ViamBoat boat;

  const _BoatTile(this.boat);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => context.read<ViamDrawerCubit>().changeBoat(
              boat.id,
            ),
        child: Container(
          padding: const EdgeInsets.all(Dimens.m),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(Dimens.m),
            ),
            border: _currentBoatId(context) == boat.id
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
                backgroundImage: Assets.images.illustrations.placeholder.boatImagePlaceholder.provider(),
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
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: IconButton(
                        icon: Icon(
                          Icons.edit,
                          color: context.getColors().blue,
                        ),
                        onPressed: () => context.read<ViamDrawerCubit>().showEditPopup(boat.name, boat.id),
                      ),
                    ),
                    const SizedBox(width: Dimens.s),
                    Expanded(
                      child: IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: context.getColors().blue,
                        ),
                        onPressed: () => context.read<ViamDrawerCubit>().showConfirmationPopup(boat.id),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  String _currentBoatId(BuildContext context) => context.read<ViamDrawerCubit>().currentBoatId ?? '';
}
