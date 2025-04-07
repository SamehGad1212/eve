import 'package:event_app/utls/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryLight,
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.inter(
        fontSize :20,
        fontWeight : FontWeight.w700,
        color: AppColors.blackColors),
      headlineMedium: GoogleFonts.inter(
        fontSize :20,
        fontWeight : FontWeight.w700,
        color: AppColors.primaryLight),
        )
      );
}