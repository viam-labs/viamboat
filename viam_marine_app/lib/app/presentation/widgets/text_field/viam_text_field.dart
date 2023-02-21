import 'package:flutter/material.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/style/app_typography.dart';
import 'package:viam_marine/app/style/dimens.dart';

class ViamMarineTextField extends StatefulWidget with ExtensionMixin {
  final String? label;
  final String? helperText;
  final ValueChanged<String>? onChanged;
  final TextEditingController? textEditingController;
  final int? maxLength;
  final bool? isDarkStyle;

  const ViamMarineTextField({
    this.label,
    this.helperText,
    this.onChanged,
    this.textEditingController,
    this.maxLength,
    this.isDarkStyle,
    super.key,
  });

  @override
  State<ViamMarineTextField> createState() => _ViamMarineTextFieldState();
}

class _ViamMarineTextFieldState extends State<ViamMarineTextField> {
  late FocusNode _focusNode;
  bool hasFocus = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) => Focus(
        onFocusChange: onFocusChanged,
        child: TextFormField(
          maxLength: widget.maxLength,
          focusNode: _focusNode,
          onChanged: widget.onChanged,
          controller: widget.textEditingController,
          cursorColor: widget.isDarkStyle ?? false
              ? context.getColors().mainGrey2
              : hasFocus
                  ? context.getColors().mainWhite
                  : null,
          style: TextStyle(
            color: widget.isDarkStyle ?? false ? context.getColors().black : context.getColors().mainWhite,
          ),
          decoration: InputDecoration(
            hintText: widget.label,
            helperText: widget.helperText,
            helperStyle: TextStyle(
              color: hasFocus ? context.getColors().mainWhite : context.getColors().mainGrey2,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            focusColor: context.getColors().mainWhite,
            counterText: '',
            counterStyle: AppTypography.label.copyWith(
              color: context.getColors().mainWhite,
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: Dimens.s),
            hintStyle: TextStyle(color: _color),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: _color),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: _color),
            ),
          ),
        ),
      );

  Color get _color {
    final Color white = context.getColors().mainWhite;
    final Color grey = context.getColors().mainGrey2;

    if (widget.isDarkStyle ?? false) {
      return grey;
    } else {
      return hasFocus ? white : grey;
    }
  }

  void onFocusChanged(bool value) {
    hasFocus = value;
    setState(() {});
  }
}
