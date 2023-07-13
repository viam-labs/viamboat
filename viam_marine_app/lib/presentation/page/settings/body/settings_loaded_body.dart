import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:viam_marine/domain/boat/model/viam_boat.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/settings/cubit/settings_cubit.dart';
import 'package:viam_marine/presentation/widgets/app_bar/viam_app_bar.dart';
import 'package:viam_marine/presentation/widgets/loading_indicator/app_loading_indicator.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/style/dimens.dart';

const offset = Offset(0, 2);
const _avatarSize = 80.0;

class SettingsLoadedBody extends StatelessWidget {
  final ViamBoat? boat;
  final bool isLoading;
  final String boatName;

  const SettingsLoadedBody({
    super.key,
    this.boat,
    required this.isLoading,
    required this.boatName,
  });

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          backgroundColor: context.getColors().deepWhite,
          appBar: ViamAppBar(title: Strings.of(context).settings_page_title),
          body: isLoading
              ? const Center(
                  child: AppLoadingIndicator(),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Dimens.m),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: Dimens.xl),
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: boat?.boatPhotoImagePath != null
                              ? Image.file(
                                  File(boat!.boatPhotoImagePath!),
                                  height: _avatarSize,
                                  width: _avatarSize,
                                  fit: BoxFit.fill,
                                )
                              : Image(
                                  image: Assets.images.illustrations.placeholder.boatImagePlaceholder.provider(),
                                  height: _avatarSize,
                                  width: _avatarSize,
                                  fit: BoxFit.fill,
                                ),
                        ),
                      ),
                      const SizedBox(height: Dimens.l),
                      Text(
                        boatName,
                        style: AppTypography.titleSemiBold.copyWith(color: context.getColors().black),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: Dimens.l),
                      _buildButtonBackground(
                        context,
                        child: _SettingsButton(
                          image: Assets.images.svg.icons.uploadPhoto.path,
                          title: Strings.of(context).settings_page_upload_image_button,
                          onTap: () => _openPhotoDialog(context),
                        ),
                      ),
                      const SizedBox(height: Dimens.l),
                      _buildButtonBackground(
                        context,
                        child: _LogoutButton(
                          onTap: context.read<SettingsCubit>().logout,
                        ),
                      )
                    ],
                  ),
                ),
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

  void _openPhotoDialog(BuildContext context) => showCupertinoModalPopup<void>(
        context: context,
        builder: (_) => CupertinoAlertDialog(
          title: Text(Strings.of(context).settings_page_photo_dialog_title),
          content: Text(Strings.of(context).settings_page_photo_dialog_description),
          actions: <CupertinoDialogAction>[
            CupertinoDialogAction(
              onPressed: () {
                context.read<SettingsCubit>().capturePhoto();
                AutoRouter.of(context).pop();
              },
              child: Text(Strings.of(context).settings_page_capture_photo_dialog_button),
            ),
            CupertinoDialogAction(
              onPressed: () {
                AutoRouter.of(context).pop();
                context.read<SettingsCubit>().choosePhoto();
                AutoRouter.of(context).pop();
              },
              child: Text(Strings.of(context).settings_page_choose_photo_dialog_button),
            ),
            CupertinoDialogAction(
              onPressed: () async {
                await AutoRouter.of(context).pop();
                //ignore: use_build_context_synchronously
                _showRemovePhotoDialog(context);
              },
              isDestructiveAction: true,
              child: Text(Strings.of(context).settings_page_remove_photo_dialog_button),
            ),
            CupertinoDialogAction(
              onPressed: AutoRouter.of(context).pop,
              child: Text(Strings.of(context).close),
            ),
          ],
        ),
      );

  void _showRemovePhotoDialog(BuildContext context) => showCupertinoModalPopup<void>(
    context: context,
    builder: (_) => CupertinoAlertDialog(
      title: Text(Strings.of(context).settings_page_photo_dialog_title),
      content: Text(Strings.of(context).settings_page_photo_dialog_remove_description),
      actions: <CupertinoDialogAction>[
        CupertinoDialogAction(
          onPressed: () {
            AutoRouter.of(context).pop();
            context.read<SettingsCubit>().removePhoto();
          },
          isDestructiveAction: true,
          child: Text(Strings.of(context).remove),
        ),
        CupertinoDialogAction(
          onPressed: () {
            AutoRouter.of(context).pop();
          },
          isDefaultAction: true,
          child: Text(Strings.of(context).cancel),
        ),
      ],
    ),
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

class _LogoutButton extends StatelessWidget {
  final Function() onTap;

  const _LogoutButton({required this.onTap});

  @override
  Widget build(BuildContext context) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: Dimens.xm),
          child: Row(
            children: [
              Icon(Icons.logout, color: context.getColors().red),
              const SizedBox(width: Dimens.s),
              Expanded(
                  child: Text(
                Strings.of(context).logout,
                style: AppTypography.body.copyWith(color: context.getColors().red),
              )),
            ],
          ),
        ),
      );
}
