import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:viam_marine/app/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/assets.gen.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/presentation/page/settings/cubit/settings_cubit.dart';
import 'package:viam_marine/app/presentation/widgets/app_bar/viam_app_bar.dart';
import 'package:viam_marine/app/presentation/widgets/loading_indicator/app_loading_indicator.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

const offset = Offset(0, 2);

class SettingsLoadedBody extends StatelessWidget {
  final ViamBoat? boat;
  final bool isLoading;

  const SettingsLoadedBody({
    this.boat,
    required this.isLoading,
    super.key,
  });

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          backgroundColor: context.getColors().deepWhite,
          appBar: ViamAppBar(title: Strings.of(context).settings_page_title),
          body: isLoading
              ? const Center(
                  child: AppLoadingIndicator(isIos: true),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Dimens.m),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: Dimens.xl),
                      CircleAvatar(
                        backgroundImage: Assets.images.illustrations.placeholder.boatImagePlaceholder.provider(),
                        radius: 40,
                      ),
                      const SizedBox(height: Dimens.l),
                      Text(
                        boat?.name ?? '',
                        style: AppTypography.titleSemiBold.copyWith(color: context.getColors().black),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: Dimens.l),
                      _buildSettingsButton(context),
                      const SizedBox(height: Dimens.l),
                      _buildDeleteButton(context),
                      //const AppLoadingIndicator(),
                    ],
                  ),
                ),
        ),
      );

  Widget _buildSettingsButton(BuildContext context) => _buildButtonBackground(
        context,
        child: Column(
          children: [
            _SettingsButton(
              image: Assets.images.svg.icons.pencil.path,
              title: Strings.of(context).settings_page_change_name_button,
              onTap: () {},
            ),
            Divider(
              height: 1,
              color: context.getColors().lightBlue,
            ),
            _SettingsButton(
              image: Assets.images.svg.icons.uploadPhoto.path,
              title: Strings.of(context).settings_page_upload_image_button,
              onTap: () {},
            ),
          ],
        ),
      );

  Widget _buildDeleteButton(BuildContext context) => _buildButtonBackground(
        context,
        child: Column(
          children: [
            _DeleteButton(
              onTap: () => context.read<SettingsCubit>().showConfirmationPopup(),
            ),
          ],
        ),
      );

  Widget _buildButtonBackground(BuildContext context, {required Widget child}) => Container(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimens.m,
          vertical: Dimens.s,
        ),
        decoration: BoxDecoration(
          color: context.getColors().mainWhite,
          borderRadius: const BorderRadius.all(
            Radius.circular(Dimens.m),
          ),
          boxShadow: [
            BoxShadow(
              color: context.getColors().shadow,
              blurRadius: 24,
              spreadRadius: 3,
              offset: offset,
            ),
          ],
        ),
        child: child,
      );
}

class _SettingsButton extends StatelessWidget {
  final Function() onTap;
  final String image;
  final String title;

  const _SettingsButton({
    required this.onTap,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: Dimens.xm),
          child: Row(
            children: [
              SvgPicture.asset(image),
              const SizedBox(width: Dimens.s),
              Expanded(
                  child: Text(
                title,
                style: AppTypography.body.copyWith(color: context.getColors().black),
              )),
              const SizedBox(width: Dimens.s),
              SvgPicture.asset(Assets.images.svg.icons.rightArrow.path),
            ],
          ),
        ),
      );
}

class _DeleteButton extends StatelessWidget {
  final Function() onTap;

  const _DeleteButton({required this.onTap});

  @override
  Widget build(BuildContext context) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: Dimens.xm),
          child: Row(
            children: [
              SvgPicture.asset(Assets.images.svg.icons.deleteBin.path),
              const SizedBox(width: Dimens.s),
              Expanded(
                  child: Text(
                    Strings.of(context).settings_page_remove_boat_button,
                style: AppTypography.body.copyWith(color: context.getColors().red),
              )),
            ],
          ),
        ),
      );
}
