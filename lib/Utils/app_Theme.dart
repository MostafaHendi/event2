import 'package:event2/Utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  static final ThemeData lightTheme =ThemeData(
    primaryColor: AppColors.primaryLight,
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.inter(
        fontSize:20,
        fontWeight:FontWeight.w700,
        color:AppColors.blackLight),
      headlineMedium: GoogleFonts.inter(
          fontSize:20,
          fontWeight:FontWeight.w700,
          color:AppColors.primaryLight),
      )
    );
  static final ThemeData darkTheme =ThemeData(
    scaffoldBackgroundColor: AppColors.primarydark,
      primaryColor: AppColors.primaryLight,
      textTheme: TextTheme(
        headlineLarge: GoogleFonts.inter(
            fontSize:20,
            fontWeight:FontWeight.w700,
            color:AppColors.blackLight),
        headlineMedium: GoogleFonts.inter(
            fontSize:20,
            fontWeight:FontWeight.w700,
            color:AppColors.primaryLight),
      )
  );

}