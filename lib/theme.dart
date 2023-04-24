import 'package:flutter/material.dart';
import 'package:site_audit/widget_themes/elevated_button_theme.dart';
import 'package:site_audit/widget_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();
  static ThemeData lightTheme = ThemeData(
    backgroundColor: Colors.grey.shade200,
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
  );
}
