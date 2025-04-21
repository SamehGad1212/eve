import 'package:event_app/utls/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_style.dart';

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
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        showUnselectedLabels: true,
        unselectedLabelStyle: AppStyle.bold12White,
        selectedLabelStyle: AppStyle.bold12White,
     elevation: 0
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.primaryLight,
        shape: StadiumBorder(
          side: BorderSide(
            color: AppColors.whiteColors,
            width: 4,
          ),
        ),
      ));
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.primaryDark,
    primaryColor: AppColors.primaryLight,
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.inter(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: AppColors.blackColors),
      headlineMedium: GoogleFonts.inter(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: AppColors.primaryLight),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showUnselectedLabels: true,
      unselectedLabelStyle: AppStyle.bold12White,
      selectedLabelStyle: AppStyle.bold12White,
   elevation: 0,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: AppColors.primaryDark,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: const BorderSide(color: AppColors.whiteColors, width: 4))),
  );
}