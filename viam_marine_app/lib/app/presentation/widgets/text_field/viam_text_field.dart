import 'package:flutter/material.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';
import 'package:viam_marine/app/style/app_typography.dart';

class ViamMarineTextField extends StatefulWidget with ExtensionMixin {
  final String? label;
  final ValueChanged<String>? onChanged;
  final TextEditingController? textEditingController;
  final int? maxLength;

  const ViamMarineTextField({
    this.label,
    this.onChanged,
    this.textEditingController,
    this.maxLength,
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
          cursorColor: hasFocus ? context.getColors().mainWhite : null,
          style: TextStyle(
            color: hasFocus ? context.getColors().mainWhite : context.getColors().mainWhite,
          ),
          decoration: InputDecoration(
              hintStyle: TextStyle(
                color: hasFocus ? context.getColors().mainWhite : context.getColors().mainGrey2,
              ),
              hintText: widget.label,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              focusColor: context.getColors().mainWhite,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: hasFocus ? context.getColors().mainWhite : context.getColors().mainGrey2,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: hasFocus ? context.getColors().mainWhite : context.getColors().mainGrey2,
                ),
              ),
              counterStyle: AppTypography.label.copyWith(
                color: context.getColors().mainWhite,
              )),
        ),
      );

  void onFocusChanged(bool value) {
    hasFocus = value;
    setState(() {});
  }
}
