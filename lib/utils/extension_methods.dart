import 'package:flutter/material.dart';
import 'package:flutter_assignment/utils/app_colors.dart';

extension TextStyleModifications on TextStyle {
  TextStyle get toWhite => copyWith(color: AppColors.white);
  TextStyle get toLightGrey => copyWith(color: AppColors.lightGrey1);
  TextStyle get toCharcoalBlack => copyWith(color: AppColors.charcoalBlack);
  TextStyle get toOffWhite1 => copyWith(color: AppColors.offWhite1);
  TextStyle get toDarkGrey1 => copyWith(color: AppColors.darkGrey1);
  TextStyle get toDarkGrey2 => copyWith(color: AppColors.darkGrey2);
}
