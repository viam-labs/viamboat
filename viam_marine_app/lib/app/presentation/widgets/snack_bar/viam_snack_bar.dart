import 'package:flutter/material.dart';
import 'package:viam_marine/app/style/app_typography.dart';

class ViamSnackBar extends SnackBar {
  final String contentMessage;
  final Color? textColor;
  final Color? snackBarBackgroundColor;

  ViamSnackBar({
    Key? key,
    this.textColor,
    this.snackBarBackgroundColor,
    required this.contentMessage,
  }) : super(
          key: key,
          backgroundColor: snackBarBackgroundColor,
          content: Text(
            contentMessage,
            textAlign: TextAlign.center,
            style: AppTypography.body.copyWith(color: textColor),
          ),
        );
}
