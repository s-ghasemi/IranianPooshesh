import 'package:flutter/material.dart';

import 'color.dart';

class AppTheme {
  ThemeData appTheme() {
    return ThemeData(
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.grayColor,
      fontFamily: "iranSans",
    );
  }
}
