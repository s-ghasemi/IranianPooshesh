import 'package:flutter/cupertino.dart';

import '../color.dart';

class AppStyle {
  static AppStyle instance = AppStyle._init();

  AppStyle._init();

  final TextStyle h2Bold = const TextStyle(
    color: AppColors.whiteColor,
    fontSize: 40,
    fontWeight: FontWeight.w700,
  );

  final TextStyle h4Bold = const TextStyle(
    color: AppColors.whiteColor,
    fontSize: 28,
    fontWeight: FontWeight.w700,
  );

  final TextStyle h5Bold = const TextStyle(
    color: AppColors.whiteColor,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );

  final TextStyle bodyXLarge = const TextStyle(
    color: AppColors.whiteColor,
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );

  final TextStyle bodyMedium = const TextStyle(
    color: AppColors.whiteColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}
