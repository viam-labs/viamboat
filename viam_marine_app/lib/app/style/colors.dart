import 'package:flutter/material.dart';

abstract class AppTheme implements AppColorsBase {}

abstract class AppColorsBase {
  late Color mainWhite;
  late Color deepWhite;
  late Color shadow;
  late Color transparent;
  late Color blue;
  late Color lightBlue;
  late Color lightBlue1;
  late Color darkBlue1;
  late Color black;
  late Color grey;
  late Color grey2;
  late Color red;
  late Color lightRed;
  late Color orange;
  late Color lightOrange;
  late Color disabledButton;
  late Color disabledButtonText;
}

class AppStandardColors {
  static const Color mainWhite = Color(0xFFFFFFFF);
  static const Color deepWhite = Color(0xffF7FAFB);
  static const Color shadow = Color(0x0d002D35);
  static const Color transparent = Colors.transparent;
  static const Color blue = Color(0xff0B8BB1);
  static const Color darkBlue1 = Color(0xff007FA5);
  static const Color lightBlue = Color(0xffE5F3F4);
  static const Color lightBlue1 = Color(0xff0187AE);
  static const Color black = Color(0xff061113);
  static const Color grey = Color(0xff6A6A6A);
  static const Color grey2 = Color(0xFF8C9598);
  static const Color red = Color(0xffB42A2A);
  static const Color lightRed = Color(0xffFDEFEF);
  static const Color orange = Color(0xffE36301);
  static const Color lightOrange = Color(0xffFDF0E5);
  static const Color disabledButton = Color(0x408C9598);
  static const Color disabledButtonText = Color(0xff92989C);
}
