import 'package:flutter/material.dart';
import 'package:viam_marine/app/generated/fonts.gen.dart';

class AppTypography {
  static const fontFamily = FontFamily.outfit;

  /// title
  static const title = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w400,
    height: 1.27,
    leadingDistribution: TextLeadingDistribution.even,
  );

  /// title small
  static const smallTitle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.43,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: 0.1,
  );

  /// title medium
  static const mediumTitle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.5,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: 0.1,
  );

  /// label
  static const label = TextStyle(
    fontSize: 11,
    height: 1.45,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    leadingDistribution: TextLeadingDistribution.even,
  );

  /// headline
  static const headline = TextStyle(
    fontSize: 28,
    height: 1.29,
    fontWeight: FontWeight.w400,
    leadingDistribution: TextLeadingDistribution.even,
  );

  /// body
  static const body = TextStyle(
    fontSize: 14,
    height: 1.43,
    fontWeight: FontWeight.w400,
    leadingDistribution: TextLeadingDistribution.even,
    letterSpacing: 0.25,
  );

  // new designs fontStyles old ones will be removed after full ui migration

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

  static const newBody = TextStyle(
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
