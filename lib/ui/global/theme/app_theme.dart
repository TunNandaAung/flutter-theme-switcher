import 'package:flutter/material.dart';

enum AppTheme {
  greenLight,
  greenDark,
  blueLight,
  blueDark,
}

final appThemeData = {
  AppTheme.greenLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.green,
    appBarTheme: const AppBarTheme(
      color: Colors.green,
    ),
  ),
  AppTheme.greenDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.green[700],
    appBarTheme: AppBarTheme(
      color: Colors.green[700],
    ),
  ),
  AppTheme.blueLight:
      ThemeData(brightness: Brightness.light, primaryColor: Colors.blue),
  AppTheme.blueDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.blue[700],
    appBarTheme: AppBarTheme(
      color: Colors.blue[700],
    ),
  ),
};
