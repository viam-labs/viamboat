import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/dashboard/cubit/dashboard_cubit.dart';
import 'package:viam_marine/presentation/widgets/buttons/app_elevated_button.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/style/dimens.dart';

class DashboardError extends StatelessWidget with ExtensionMixin {
  const DashboardError({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(Dimens.m),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Icon(
                  Icons.error_outline,
                  size: Dimens.xxxxc,
                  color: context.getColors().darkBlue1,
                ),
                const SizedBox(height: Dimens.l),
                Text(
                  Strings.of(context).error_something_went_wrong,
                  style: AppTypography.titleSemiBold,
                ),
                const SizedBox(height: Dimens.m),
                Text(
                  Strings.of(context).error_while_connecting_msg,
                  style: AppTypography.body,
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                AppElevatedButton(
                  onTap: () => context.read<DashboardCubit>().init(''),
                  title: Strings.of(context).retry,
                ),
              ],
            ),
          ),
        ),
      );
}
