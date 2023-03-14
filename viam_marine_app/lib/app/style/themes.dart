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
  Color grey2 = AppStandardColors.grey2;

  @override
  Color mainWhite = AppStandardColors.mainWhite;

  @override
  Color blue = AppStandardColors.blue;

  @override
  Color deepWhite = AppStandardColors.deepWhite;

  @override
  Color lightBlue = AppStandardColors.lightBlue;

  @override
  Color lightBlue1 = AppStandardColors.lightBlue1;

  @override
  Color darkBlue1 = AppStandardColors.darkBlue1;

  @override
  Color shadow = AppStandardColors.shadow;

  @override
  Color transparent = AppStandardColors.transparent;

  @override
  Color black = AppStandardColors.black;

  @override
  Color grey = AppStandardColors.grey;

  @override
  Color red = AppStandardColors.red;

  @override
  Color lightRed = AppStandardColors.lightRed;

  @override
  Color lightOrange = AppStandardColors.lightOrange;

  @override
  Color orange = AppStandardColors.orange;

  @override
  Color disabledButton = AppStandardColors.disabledButton;

  @override
  Color disabledButtonText = AppStandardColors.disabledButtonText;
}
