import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:viam_marine/app/style/colors.dart';

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
  Color mainDark = AppStandardColors.mainDark;

  @override
  Color mainGrey = AppStandardColors.mainGrey;

  @override
  Color mainGrey90 = AppStandardColors.mainGrey90;

  @override
  Color mainWhite = AppStandardColors.mainWhite;

  @override
  Color mainGrey80 = AppStandardColors.mainGrey80;

  @override
  Color mainBlue = AppStandardColors.mainBlue;

  @override
  Color mainLightBlue = AppStandardColors.mainLightBlue;

  @override
  Color darkGrey = AppStandardColors.darkGrey;
}
