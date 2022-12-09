import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/assets.gen.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/presentation/page/add_boat/cubit/add_boat_cubit.dart';
import 'package:viam_marine/app/presentation/page/add_boat/widget/log_in_button.dart';
import 'package:viam_marine/app/presentation/widgets/loading_indicator/app_loading_indicator.dart';
import 'package:viam_marine/app/presentation/widgets/text_field/viam_text_field.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

class AddBoatPageBody extends StatefulWidget with ExtensionMixin {
  final bool canProceed;
  final bool isLoading;

  const AddBoatPageBody({
    required this.canProceed,
    required this.isLoading,
    super.key,
  });

  @override
  State<AddBoatPageBody> createState() => _AddBoatBodyState();
}

class _AddBoatBodyState extends State<AddBoatPageBody> {
  late TextEditingController _boatsNameController;
  late TextEditingController _addressController;
  late TextEditingController _secretController;

  static const imgHeight = 300.0;

  @override
  void initState() {
    super.initState();

    _boatsNameController = TextEditingController();
    _addressController = TextEditingController();
    _secretController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        reverse: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Assets.images.illustrations.background.backgroundImg.image(
              fit: BoxFit.cover,
              height: imgHeight,
            ),
            Padding(
              padding: const EdgeInsets.all(Dimens.xl),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Strings.of(context).add_boat_page_header,
                    style: AppTypography.headline,
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: Dimens.xl),
                  ViamMarineTextField(
                    label: Strings.of(context).text_field_label_name,
                    onChanged: (_) => verifyInputs(context),
                    textEditingController: _boatsNameController,
                  ),
                  const SizedBox(height: Dimens.xl),
                  ViamMarineTextField(
                    label: Strings.of(context).text_field_label_address,
                    onChanged: (_) => verifyInputs(context),
                    textEditingController: _addressController,
                  ),
                  const SizedBox(height: Dimens.xl),
                  ViamMarineTextField(
                    label: Strings.of(context).text_field_label_secret,
                    onChanged: (_) => verifyInputs(context),
                    textEditingController: _secretController,
                  ),
                  const SizedBox(height: Dimens.xl),
                  !widget.isLoading
                      ? LogInButton(
                          isActive: widget.canProceed,
                          onTap: () => context.read<AddBoatCubit>().addNewBoat(
                                _boatsNameController.text.trim(),
                                _addressController.text.trim(),
                                _secretController.text.trim(),
                              ),
                        )
                      : const AppLoadingIndicator(),
                ],
              ),
            )
          ],
        ),
      );

  void verifyInputs(BuildContext context) => context.read<AddBoatCubit>().verifyInputs(
        _boatsNameController.text.trim(),
        _addressController.text.trim(),
        _secretController.text.trim(),
      );
}
