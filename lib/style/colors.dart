import 'package:flutter/material.dart';

abstract class AppTheme implements AppColorsBase {}

abstract class AppColorsBase {
  late Color mainDark;
}

class AppStandardColors {
  static const Color mainDark = Color(0xFF424242);
}
