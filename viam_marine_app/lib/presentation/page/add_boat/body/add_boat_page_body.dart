import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:viam_marine/domain/error/model/viam_error.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/generated/assets.gen.dart';
import 'package:viam_marine/generated/l10n.dart';
import 'package:viam_marine/presentation/page/add_boat/cubit/add_boat_cubit.dart';
import 'package:viam_marine/presentation/widgets/buttons/viam_standard_button.dart';
import 'package:viam_marine/style/app_typography.dart';
import 'package:viam_marine/style/dimens.dart';

class AddBoatPageBody extends StatefulWidget with ExtensionMixin {
  final bool canProceed;
  final bool isLoading;
  final bool showWelcomeText;
  final String? name;
  final String? address;
  final String? secret;
  final ViamError? error;

  const AddBoatPageBody({
    required this.canProceed,
    required this.isLoading,
    required this.showWelcomeText,
    this.name,
    this.address,
    this.secret,
    this.error,
    super.key,
  });

  @override
  State<AddBoatPageBody> createState() => _AddBoatBodyState();
}

class _AddBoatBodyState extends State<AddBoatPageBody> {
  late TextEditingController _boatsNameController;
  late TextEditingController _addressController;
  late TextEditingController _secretController;

  @override
  void initState() {
    super.initState();

    if (widget.error != null) {
      _showInitError(widget.error!);
    }

    _initializeFields();
    _verifyInputs(context);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.dark,
      ),
    );
  }

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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimens.m,
                vertical: Dimens.xl,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.showWelcomeText)
                    Text(
                      Strings.of(context).add_boat_page_header_welcome_text,
                      style: AppTypography.titleRegular.copyWith(
                        color: context.getColors().mainWhite,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  Text(
                    _headerTextSecondPart,
                    style: AppTypography.titleBold.copyWith(
                      color: context.getColors().mainWhite,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: Dimens.xxxl),
                  ViamStandardButton(
                    isLoading: widget.isLoading,
                    isActive: widget.canProceed,
                    title: _addBoatButtonTitle,
                    onTap: context.read<AddBoatCubit>().auth,
                  ),
                ],
              ),
            ),
            AutoRouter.of(context).canPop()
                ? SafeArea(
                    child: BackButton(
                      color: context.getColors().mainWhite,
                      onPressed: _onBackButtonTap,
                    ),
                  )
                : const SizedBox.shrink()
          ],
        ),
      );

  void _onBackButtonTap() =>
      _showPopup ? context.read<AddBoatCubit>().showConfirmationPopup() : AutoRouter.of(context).pop();

  bool get _showPopup =>
      _addressController.text.trim().isNotEmpty ||
      _boatsNameController.text.trim().isNotEmpty ||
      _secretController.text.trim().isNotEmpty;

  String get _addBoatButtonTitle => widget.showWelcomeText ? Strings.of(context).log_in : Strings.of(context).add_boat;

  String get _headerTextSecondPart =>
      widget.showWelcomeText ? Strings.of(context).viam_marine : Strings.of(context).add_boat_page_header_add_next_boat;

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

  void _showInitError(ViamError error) => context.read<AddBoatCubit>().showErrorMessage(error);

  @override
  void dispose() {
    super.dispose();

    _boatsNameController.dispose();
    _addressController.dispose();
    _secretController.dispose();
  }
}
