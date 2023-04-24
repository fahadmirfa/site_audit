import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:site_audit/constants/colors.dart';

class TTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    headline1: GoogleFonts.roboto(
        fontSize: 22, fontWeight: FontWeight.w400, color: tWhiteColor),
    headline2: GoogleFonts.poppins(
        fontSize: 20, fontWeight: FontWeight.w700, color: tDarkGrey),
    headline3: GoogleFonts.poppins(
        fontSize: 13, fontWeight: FontWeight.w700, color: tDarkGrey),
    headline4: GoogleFonts.poppins(
        fontSize: 16, fontWeight: FontWeight.w600, color: tDarkGrey),
    headline6: GoogleFonts.poppins(
        fontSize: 15, fontWeight: FontWeight.w500, color: tWhiteColor),
    bodyText1: GoogleFonts.poppins(
        fontSize: 10, fontWeight: FontWeight.w500, color: tWatchTutorial),
    bodyText2: GoogleFonts.poppins(
        fontSize: 10, fontWeight: FontWeight.w400, color: tGreyColor),
  );
}
