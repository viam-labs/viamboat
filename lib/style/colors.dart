import 'package:flutter/material.dart';

abstract class AppTheme implements AppColorsBase {}

abstract class AppColorsBase {
  late Color mainColor;
}

class AppStandardColors {
  static const Color mainColor = Color(0xFFFFF9D3);
}
