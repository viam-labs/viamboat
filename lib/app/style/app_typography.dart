import 'package:flutter/material.dart';
import 'package:viam_marine/app/generated/fonts.gen.dart';

class AppTypography {
  static const fontFamily = FontFamily.roboto;

  /// title
  static const title = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w400,
    height: 1.35,
    leadingDistribution: TextLeadingDistribution.even,
  );

  /// title
  static const smallTitle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.35,
    leadingDistribution: TextLeadingDistribution.even,
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
    height: 1.30,
    fontWeight: FontWeight.w400,
    leadingDistribution: TextLeadingDistribution.even,
  );
}
