import 'package:flutter/material.dart';
import 'package:viam_marine/app/extensions/extension_mixin.dart';

class ViamMarineTextField extends StatefulWidget with ExtensionMixin {
  final String? label;
  final ValueChanged<String>? onChanged;
  final TextEditingController? textEditingController;

  const ViamMarineTextField({
    this.label,
    this.onChanged,
    this.textEditingController,
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
          focusNode: _focusNode,
          onChanged: widget.onChanged,
          controller: widget.textEditingController,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: context.getColors().mainBlue,
              ),
            ),
            labelStyle: TextStyle(
              color: hasFocus ? context.getColors().mainBlue : null,
            ),
            labelText: widget.label,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            border: const OutlineInputBorder(),
          ),
        ),
      );

  void onFocusChanged(bool value) {
    hasFocus = value;
    setState(() {});
  }
}
