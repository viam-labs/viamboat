import 'package:flutter/material.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/presentation/widgets/buttons/viam_standard_button.dart';
import 'package:viam_marine/app/presentation/widgets/text_field/viam_text_field.dart';
import 'package:viam_marine/app/style/dimens.dart';

class ChangeBoatNameBody extends StatefulWidget with ExtensionMixin {
  final String boatName;
  final bool isButtonActive;

  const ChangeBoatNameBody({
    super.key,
    required this.boatName,
    required this.isButtonActive,
  });

  @override
  State<ChangeBoatNameBody> createState() => _ChangeBoatNameBodyState();
}

class _ChangeBoatNameBodyState extends State<ChangeBoatNameBody> {
  late TextEditingController _boatNameController;

  @override
  void initState() {
    super.initState();
    _boatNameController = TextEditingController(text: widget.boatName);
  }

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.m),
          child: Column(
            children: [
              const SizedBox(height: Dimens.xl),
              ViamMarineTextField(
                maxLength: 20,
                textEditingController: _boatNameController,
                isDarkStyle: true,
              ),
              const SizedBox(height: Dimens.l),
              ViamStandardButton(
                isActive: true,
                title: Strings.of(context).save_changes,
              )
            ],
          ),
        ),
      );
}
