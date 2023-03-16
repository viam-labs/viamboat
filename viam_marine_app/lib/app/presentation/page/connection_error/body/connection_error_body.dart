import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/assets.gen.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/presentation/page/connection_error/cubit/connection_error_cubit.dart';
import 'package:viam_marine/app/presentation/widgets/buttons/viam_standard_button.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

class ConnectionErrorBody extends StatelessWidget with ExtensionMixin {
  final bool isLoading;

  const ConnectionErrorBody({
    super.key,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(Dimens.m),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            SvgPicture.asset(Assets.images.svg.icons.connectionError.path),
            Text(
              Strings.of(context).error_can_not_connect_to_the_boat,
              style: AppTypography.titleSemiBold.copyWith(
                color: context.getColors().black,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              Strings.of(context).error_while_connecting_msg,
              style: AppTypography.body.copyWith(
                color: context.getColors().grey,
              ),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Dimens.xxxxc),
              child: ViamStandardButton(
                isActive: true,
                isLoading: isLoading,
                title: Strings.of(context).retry,
                onTap: context.read<ConnectionErrorCubit>().onRetryButtonTap,
              ),
            ),
          ],
        ),
      );
}
