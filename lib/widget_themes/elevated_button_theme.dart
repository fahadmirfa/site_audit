import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      foregroundColor: tWhiteColor,
      backgroundColor: tDarkGrey,
      side: BorderSide(color: tDarkGrey),
    ),
  );
}
