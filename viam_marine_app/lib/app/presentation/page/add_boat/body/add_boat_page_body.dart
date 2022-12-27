import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/assets.gen.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/presentation/page/add_boat/cubit/add_boat_cubit.dart';
import 'package:viam_marine/app/presentation/widgets/buttons/viam_standard_button.dart';
import 'package:viam_marine/app/presentation/widgets/loading_indicator/app_loading_indicator.dart';
import 'package:viam_marine/app/presentation/widgets/text_field/viam_text_field.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

class AddBoatPageBody extends StatefulWidget with ExtensionMixin {
  final bool canProceed;
  final bool isLoading;
  final bool showWelcomeText;
  final String? name;
  final String? address;
  final String? secret;
  final String? errorMsg;

  const AddBoatPageBody({
    required this.canProceed,
    required this.isLoading,
    required this.showWelcomeText,
    this.name,
    this.address,
    this.secret,
    this.errorMsg,
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

    if (widget.errorMsg != null) {
      _showInitError(widget.errorMsg!);
    }

    _initializeFields();
    _verifyInputs(context);
  }

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          SingleChildScrollView(
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
                        _headerText,
                        style: AppTypography.headline,
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(height: Dimens.xl),
                      ViamMarineTextField(
                        label: Strings.of(context).text_field_label_name,
                        onChanged: (_) => _verifyInputs(context),
                        textEditingController: _boatsNameController,
                      ),
                      const SizedBox(height: Dimens.xl),
                      ViamMarineTextField(
                        label: Strings.of(context).text_field_label_address,
                        onChanged: (_) => _verifyInputs(context),
                        textEditingController: _addressController,
                      ),
                      const SizedBox(height: Dimens.xl),
                      ViamMarineTextField(
                        label: Strings.of(context).text_field_label_secret,
                        onChanged: (_) => _verifyInputs(context),
                        textEditingController: _secretController,
                      ),
                      const SizedBox(height: Dimens.xl),
                      Row(
                        children: [
                          !widget.isLoading
                              ? ViamStandardButton(
                                  isActive: widget.canProceed,
                                  title: widget.showWelcomeText ? Strings.of(context).log_in : Strings.of(context).add,
                                  onTap: () => context.read<AddBoatCubit>().addNewBoat(
                                        _boatsNameController.text.trim(),
                                        _addressController.text.trim(),
                                        _secretController.text.trim(),
                                      ),
                                )
                              : const AppLoadingIndicator(),
                          const SizedBox(width: Dimens.ms),
                          ViamStandardButton(
                            isActive: true,
                            title: Strings.of(context).scan_qr,
                            onTap: context.read<AddBoatCubit>().scanQrCode,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          AutoRouter.of(context).canPop()
              ? SafeArea(
                  child: BackButton(
                    onPressed: _onBackButtonTap,
                  ),
                )
              : const SizedBox.shrink()
        ],
      );

  void _onBackButtonTap() =>
      _showPopup ? context.read<AddBoatCubit>().showConfirmationPopup() : AutoRouter.of(context).pop();

  bool get _showPopup =>
      _addressController.text.trim().isNotEmpty ||
      _boatsNameController.text.trim().isNotEmpty ||
      _secretController.text.trim().isNotEmpty;

  String get _headerText => widget.showWelcomeText
      ? Strings.of(context).add_boat_page_header_welcome_text
      : Strings.of(context).add_boat_page_header_add_next_boat;

  void _verifyInputs(BuildContext context) => context.read<AddBoatCubit>().verifyInputs(
        _boatsNameController.text.trim(),
        _addressController.text.trim(),
        _secretController.text.trim(),
      );

  void _initializeFields() {
    _boatsNameController = TextEditingController(text: widget.name);
    _addressController = TextEditingController(text: widget.address);
    _secretController = TextEditingController(text: widget.secret);
  }

  void _showInitError(String msg) => context.read<AddBoatCubit>().showErrorMsg(msg);
}
