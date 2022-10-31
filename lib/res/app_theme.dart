import 'package:flutter/material.dart';
import 'package:iranian_pooshesh/res/style/text_style.dart';

import 'color.dart';

class AppTheme {
  ThemeData appTheme() {
    return ThemeData(
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.backgroundColor,
      fontFamily: "iranSans",
      textTheme: const TextTheme(
        headline4: TextStyle(
          color: Color(0xFF707070),
          fontWeight: FontWeight.w400,
          fontSize: 12,
        ),
        headline5: TextStyle(
          color: Color(0xFF505050),
          fontWeight: FontWeight.w400,
          fontSize: 12,
        ),
        headline6: TextStyle(
          color: AppColors.whiteColor,
          fontWeight: FontWeight.w400,
          fontSize: 10,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.whiteColor,
        hintStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: AppColors.grayColor,
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
        ),
      ),
      appBarTheme: AppBarTheme(
        surfaceTintColor: AppColors.whiteColor,
        scrolledUnderElevation: 2,
        toolbarTextStyle: AppStyle.instance.bodyMedium,
        iconTheme: const IconThemeData(color: AppColors.whiteColor),
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        titleTextStyle: const TextStyle(
          color: AppColors.whiteColor,
          fontSize: 18,
          fontWeight: FontWeight.w500,
          fontFamily: "iranSans",
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(
          color: AppColors.primaryColor,
          size: 24,
        ),
        unselectedIconTheme: IconThemeData(
          color: AppColors.grayColor,
          size: 24,
        ),
        selectedLabelStyle: TextStyle(
          color: AppColors.primaryColor,
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.grayColor,
        unselectedLabelStyle: TextStyle(
          color: AppColors.grayColor,
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
