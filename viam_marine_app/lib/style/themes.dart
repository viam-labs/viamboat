import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:viam_marine/style/colors.dart';

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

  @override
  Color lightBlue2 = AppStandardColors.lightBlue2;

  @override
  Color lightBlue3 = AppStandardColors.lightBlue3;

  @override
  Color waterDepthHigh = AppStandardColors.waterDepthHigh;

  @override
  Color waterDepthMid = AppStandardColors.waterDepthMid;

  @override
  Color waterDepthLow = AppStandardColors.waterDepthLow;

  @override
  Color waterTemperatureHigh = AppStandardColors.waterTemperatureHigh;

  @override
  Color waterTemperatureMid = AppStandardColors.waterTemperatureMid;

  @override
  Color waterTemperatureLow = AppStandardColors.waterTemperatureLow;

  @override
  Color mapShadow = AppStandardColors.mapShadow;

  @override
  Color darkBlue2 = AppStandardColors.darkBlue2;
}
