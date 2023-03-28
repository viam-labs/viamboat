import 'package:flutter/material.dart';
import 'package:viam_marine/extensions/extension_mixin.dart';
import 'package:viam_marine/style/dimens.dart';

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
          cursorColor: _cursorColor,
          style: TextStyle(
            color: _isDarkStyle ? context.getColors().black : context.getColors().mainWhite,
          ),
          decoration: _isDarkStyle
              ? _getInputDecoration(
                  enabledBorderColor: context.getColors().grey2,
                  focusedBorderColor: context.getColors().grey2,
                  focusColor: context.getColors().grey,
                  helperTextColor: context.getColors().grey,
                  hintColor: context.getColors().grey2,
                )
              : _getInputDecoration(
                  enabledBorderColor: _whiteOrGreyColor,
                  focusedBorderColor: _whiteOrGreyColor,
                  focusColor: context.getColors().mainWhite,
                  helperTextColor: _whiteOrGreyColor,
                  hintColor: _whiteOrGreyColor,
                ),
        ),
      );

  InputDecoration _getInputDecoration({
    required Color enabledBorderColor,
    required Color focusedBorderColor,
    Color? helperTextColor,
    Color? hintColor,
    Color? focusColor,
  }) =>
      InputDecoration(
        hintText: widget.label,
        hintStyle: TextStyle(color: hintColor),
        helperText: widget.helperText,
        helperStyle: TextStyle(color: helperTextColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        counterText: '',
        contentPadding: const EdgeInsets.symmetric(horizontal: Dimens.s),
        focusColor: focusColor,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: enabledBorderColor),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: focusedBorderColor),
        ),
      );

  Color get _whiteOrGreyColor => hasFocus ? context.getColors().mainWhite : context.getColors().grey2;

  Color? get _cursorColor => _isDarkStyle
      ? context.getColors().grey2
      : hasFocus
          ? context.getColors().mainWhite
          : null;

  bool get _isDarkStyle => widget.isDarkStyle ?? false;

  void onFocusChanged(bool value) {
    hasFocus = value;
    setState(() {});
  }
}
