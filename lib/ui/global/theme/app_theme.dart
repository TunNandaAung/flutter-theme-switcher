import 'package:flutter/material.dart';

enum AppTheme {
  GreenLight,
  GreenDark,
  BlueLight,
  BlueDark,
}

final appThemeData = {
  AppTheme.GreenLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.green,
    appBarTheme: AppBarTheme(
      color: Colors.green,
    ),
  ),
  AppTheme.GreenDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.green[700],
    appBarTheme: AppBarTheme(
      color: Colors.green[700],
    ),
  ),
  AppTheme.BlueLight:
      ThemeData(brightness: Brightness.light, primaryColor: Colors.blue),
  AppTheme.BlueDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.blue[700],
    appBarTheme: AppBarTheme(
      color: Colors.blue[700],
    ),
  ),
};
