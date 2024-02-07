
import 'package:flutter/material.dart';
import 'package:islami_sun_c10/ui/utils/app_colors.dart';

abstract class AppTheme{
  static const TextStyle appBarTextStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: AppColors.lightBlack
  );
  static const TextStyle mediumTitleTextStyle = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w600,
      color: AppColors.lightBlack
  );
  static const TextStyle regularTitleTextStyle = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w400,
      color: AppColors.lightBlack
  );
  static const TextStyle semiBoldNumberTextStyle = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w600,
    color: AppColors.lightBlack,
  );
}