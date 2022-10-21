import 'package:flutter/material.dart';

abstract class AppTheme implements AppColorsBase {}

abstract class AppColorsBase {
  late Color mainDark;
  late Color bgColor;
}

class AppStandardColors {
  static const Color mainDark = Color(0xFF424242);
  static const Color bgColor = Color(0xFFF7F7F7);
}
