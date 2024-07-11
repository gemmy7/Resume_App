import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
class AppTheme{
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    canvasColor: Colors.black,
    cardColor: AppColors.appLightColor,
    textTheme: TextTheme(
      displayLarge: const TextStyle(

        fontSize: 35,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      displayMedium: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      displaySmall: const TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyLarge: const TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyMedium:  TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.grey.shade600,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    canvasColor: Colors.white,
    scaffoldBackgroundColor: Colors.black,
    cardColor: AppColors.appDarkColor,
    textTheme: TextTheme(
      displayLarge: const TextStyle(
        fontSize: 35,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      displaySmall: const TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyLarge: const TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyMedium:  TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Colors.grey.shade400,
      ),
    ),
  );
}