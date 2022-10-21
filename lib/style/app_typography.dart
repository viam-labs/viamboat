import 'package:flutter/material.dart';
import 'package:viam_marine/generated/fonts.gen.dart';

class AppTypography {
  static const fontFamily = FontFamily.inter;

  /// title
  static const title = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w400,
    height: 1.35,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const exampleStyle2 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 1.35,
    leadingDistribution: TextLeadingDistribution.even,
  );

  static const exampleStyle3 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 1.4,
    leadingDistribution: TextLeadingDistribution.even,
  );
}
