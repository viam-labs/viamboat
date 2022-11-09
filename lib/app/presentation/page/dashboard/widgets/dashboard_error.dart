import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/presentation/page/dashboard/cubit/dashboard_cubit.dart';
import 'package:viam_marine/app/presentation/widgets/buttons/app_elevated_button.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

class DashboardError extends StatelessWidget with ExtensionMixin {
  const DashboardError({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(Dimens.m),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.error_outline,
                size: Dimens.xxxxc,
                color: context.getColors().mainDark,
              ),
              const SizedBox(height: Dimens.m),
              Text(
                'Something went wrong!',
                style: AppTypography.headline.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: Dimens.xs),
              const Text(
                'An Error occured while connecting to the boat.',
                style: AppTypography.title,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: Dimens.l),
              AppElevatedButton(
                onTap: context.read<DashboardCubit>().init,
                title: 'Retry',
              ),
            ],
          ),
        ),
      );
}
