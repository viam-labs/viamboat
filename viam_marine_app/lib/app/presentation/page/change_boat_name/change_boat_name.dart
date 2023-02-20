import 'package:flutter/material.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/presentation/widgets/app_bar/viam_app_bar.dart';
import 'package:viam_marine/app/style/app_typography.dart';

class ChangeBoatNamePage extends StatelessWidget with ExtensionMixin {
  const ChangeBoatNamePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: ViamAppBar(
          title: 'Boat Name',
          titleTextStyle: AppTypography.newBody.copyWith(color: context.getColors().black),
          leading: BackButton(color: context.getColors().blue),
        ),
        body: const SafeArea(
          child: Center(
            child: Text('Change boat name'),
          ),
        ),
      );
}
