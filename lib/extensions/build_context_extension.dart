import 'package:flutter/material.dart';
import 'package:viam_marine/style/themes.dart';
import 'package:provider/provider.dart';

extension ThemeProvider on BuildContext {
  AppTheme getColors({bool listen = true}) => Provider.of<ThemeModel>(this, listen: listen).getTheme;
}
