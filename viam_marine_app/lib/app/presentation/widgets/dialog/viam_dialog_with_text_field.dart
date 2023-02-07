import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/generated/l10n.dart';
import 'package:viam_marine/app/presentation/widgets/buttons/confirmation_button.dart';
import 'package:viam_marine/app/style/app_typography.dart';

class ViamDialogWithInput extends StatefulWidget {
  final String title;
  final String text;
  final String acceptButtonLabel;
  final Function(String) onConfirmTap;
  final VoidCallback onDismissTap;
  final String? errorMessage;

  const ViamDialogWithInput({
    required this.title,
    required this.text,
    required this.acceptButtonLabel,
    required this.onConfirmTap,
    required this.onDismissTap,
    this.errorMessage,
    super.key,
  });

  @override
  State<ViamDialogWithInput> createState() => _ViamDialogWithInputState();
}

class _ViamDialogWithInputState extends State<ViamDialogWithInput> {
  bool _hasNameChanged = false;
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = widget.text;
    _controller.addListener(() {
      _hasNameChanged =
          _controller.text != widget.text && _controller.text.length < 20 && _controller.text.trim().isNotEmpty;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) => AlertDialog(
        title: Text(
          widget.title,
          textAlign: TextAlign.center,
          style: AppTypography.body.copyWith(
            fontWeight: FontWeight.w600,
            color: context.getColors().mainBlack,
          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              maxLength: 20,
              controller: _controller,
              textAlign: TextAlign.center,
              style: AppTypography.body.copyWith(
                color: context.getColors().mainBlack,
              ),
            ),
            if (widget.errorMessage != null)
              Text(
                widget.errorMessage!,
                textAlign: TextAlign.center,
                style: AppTypography.body.copyWith(
                  color: context.getColors().red,
                ),
              )
          ],
        ),
        actions: [
          ConfirmationButton(
            isActive: _hasNameChanged,
            title: widget.acceptButtonLabel,
            onTap: () {
              AutoRouter.of(context).pop();
              widget.onConfirmTap(_controller.text);
            },
          ),
          ConfirmationButton(
            title: Strings.of(context).cancel,
            onTap: widget.onDismissTap,
          ),
        ],
      );
}
