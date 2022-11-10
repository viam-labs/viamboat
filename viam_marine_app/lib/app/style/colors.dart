import 'package:flutter/material.dart';

abstract class AppTheme implements AppColorsBase {}

abstract class AppColorsBase {
  late Color mainDark;
  late Color mainGrey90;
  late Color mainGrey80;
  late Color mainGrey;
  late Color mainWhite;
  late Color mainBlue;
}

class AppStandardColors {
  static const Color mainDark = Color(0xFF424242);
  static const Color mainGrey90 = Color(0xFFF7F7F7);
  static const Color mainGrey80 = Color(0xFFE5E5E5);
  static const Color mainGrey = Color(0xFF79747E);
  static const Color mainWhite = Color(0xFFFFFFFF);
  static const Color mainBlue = Color(0xFF4548C4);
}
