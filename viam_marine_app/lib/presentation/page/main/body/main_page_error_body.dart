import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/main/cubit/main_cubit.dart';
import 'package:viam_marine/presentation/widgets/error_widget/error_state_widget.dart';

class MainPageErrorBody extends StatelessWidget {
  const MainPageErrorBody({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: ErrorStateWidget(
            iconPath: Assets.images.svg.icons.connectionError.path,
            title: Strings.of(context).error_can_not_connect_to_the_boat,
            subtitle: Strings.of(context).error_while_connecting_msg,
            buttonText: Strings.of(context).retry,
            onTap: context.read<MainCubit>().refreshApp,
          ),
        ),
      );
}
