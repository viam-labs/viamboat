import 'package:flutter/material.dart';

abstract class AppTheme implements AppColorsBase {}

abstract class AppColorsBase {
  late Color mainDark;
  late Color background;
  late Color border;
  late Color white;
}

class AppStandardColors {
  static const Color mainDark = Color(0xFF424242);
  static const Color background = Color(0xFFF7F7F7);
  static const Color border = Color(0xFF79747E);
  static const Color white = Color(0xFFFFFFFF);
}
