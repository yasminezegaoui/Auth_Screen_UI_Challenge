// ignore_for_file: prefer_const_constructors

import 'package:auth_screen_ui_challenge/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    brightness: Brightness.light,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        shadowColor: AppColors.primary.withOpacity(0.6),
        elevation: 10,
        textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          fontFamily: 'Poppins',
          color: Colors.white
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        )
      )
    )
  );
}