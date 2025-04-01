import 'package:flutter/material.dart';
import 'package:lab_6/constant/colors.dart';

class AppTextStyles {
  static final TextStyle px12Blue = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.bold,
    color: AppColors.secondary,
    fontSize: 12,
  );

  static final TextStyle superSmall = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    color: AppColors.lightGreyColor,
    fontSize: 11,
  );

  static final TextStyle px10Blue = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w400,
    color: AppColors.tertiary,
    fontSize: 10,
  );
}
