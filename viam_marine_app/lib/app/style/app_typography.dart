import 'package:flutter/material.dart';
import 'package:viam_marine/app/generated/fonts.gen.dart';

class AppTypography {
  static const fontFamily = FontFamily.outfit;

  static const titleBold = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 1.33,
  );

  static const titleRegular = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    height: 1.33,
  );

  static const titleSemiBold = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 1.33,
  );

  static const bodySemibold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.5,
  );

  static const body = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  static const bodyMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.5,
  );

  static const bodySmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.7,
    letterSpacing: 0.1,
  );
}
