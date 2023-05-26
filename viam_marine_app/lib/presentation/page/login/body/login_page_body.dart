import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/login/cubit/login_page_cubit.dart';
import 'package:viam_marine/presentation/widgets/buttons/viam_standard_button.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/style/dimens.dart';

class LoginPageBody extends StatelessWidget {
  final bool isLoading;

  const LoginPageBody({
    super.key,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                Assets.images.illustrations.boat.boat.path,
                fit: BoxFit.cover,
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Dimens.m,
                  vertical: Dimens.xl,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.of(context).add_boat_page_header_welcome_text,
                      style: AppTypography.titleRegular.copyWith(
                        color: context.getColors().mainWhite,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      Strings.of(context).viam_marine,
                      style: AppTypography.largeTitle.copyWith(
                        color: context.getColors().mainWhite,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: Dimens.l),
                    ViamStandardButton(
                      isLoading: isLoading,
                      isActive: true,
                      title: Strings.of(context).login,
                      onTap: context.read<LoginPageCubit>().login,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
