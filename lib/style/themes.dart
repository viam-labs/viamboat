import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'colors.dart';

class ThemeModel with ChangeNotifier {
  AppTheme _currentTheme = StandardTheme();

  AppTheme get getTheme => _currentTheme;

  void setTheme(themeMode) {
    _currentTheme = themeMode;
    notifyListeners();
  }
}

abstract class AppTheme implements AppColorsBase {}

class StandardTheme extends AppTheme {
  @override
  Color mainColor = AppStandardColors.mainColor;

}
