import 'package:flutter/material.dart';
import 'custom_themes/custom_themes.dart';

class TrendyTheme{
  TrendyTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.indigoAccent,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TrendyTextTheme.lightTextTheme,
    elevatedButtonTheme: TrendyElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: TrendyAppBarTheme.lightAppBarTheme,

  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.indigoAccent,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TrendyTextTheme.darkTextTheme,
    elevatedButtonTheme: TrendyElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: TrendyAppBarTheme.darkAppBarTheme,
  );
}