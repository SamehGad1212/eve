import 'package:event_app/utls/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle{
  static TextStyle semi20Black =GoogleFonts.inter(
      fontSize: 20,fontWeight: FontWeight.w700,color: AppColors.blackColors);

  static TextStyle semi20Primary =GoogleFonts.inter(
      fontSize: 20,fontWeight: FontWeight.w700,color: AppColors.primaryLight);

  static TextStyle bold20Primary =GoogleFonts.inter(
      fontSize: 20,fontWeight: FontWeight.bold,color: AppColors.primaryDark);

  static TextStyle bold12White =GoogleFonts.inter(
      fontSize: 12,fontWeight: FontWeight.w700,color: AppColors.whiteColors);

  static TextStyle bold24White =GoogleFonts.inter(
      fontSize: 24,fontWeight: FontWeight.bold,color: AppColors.whiteColors);

  static TextStyle bold14Black =GoogleFonts.inter(
      fontSize: 14,fontWeight: FontWeight.bold,color: AppColors.blackColors);

  static TextStyle bold14Primary =GoogleFonts.inter(
      fontSize: 14,fontWeight: FontWeight.bold,color: AppColors.primaryLight);

  static TextStyle bold16Primary =GoogleFonts.inter(
      fontSize: 16,fontWeight: FontWeight.bold,color: AppColors.primaryLight);

  static TextStyle bold16White =GoogleFonts.inter(
      fontSize: 16,fontWeight: FontWeight.bold,color: AppColors.whiteColors);
  static TextStyle medium16Primary =GoogleFonts.inter(
      fontSize: 16,fontWeight: FontWeight.bold,color: AppColors.whiteColors);

}