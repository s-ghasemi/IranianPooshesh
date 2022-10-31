import 'package:flutter/material.dart';
import 'package:iranian_pooshesh/res/style/text_style.dart';

import 'color.dart';

class AppTheme {
  ThemeData appTheme() {
    return ThemeData(
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.backgroundColor,
      fontFamily: "iranSans",
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
