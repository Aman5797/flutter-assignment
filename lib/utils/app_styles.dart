import 'package:flutter/material.dart';
import 'package:flutter_assignment/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static const TextStyle _defaultStyle = TextStyle(
    color: AppColors.black,
    fontFamily: AppFonts.nunito,
  );

  static final TextStyle baseFont =
      _defaultStyle.copyWith(fontWeight: FontWeight.w400);

  /// FontSize: 10
  static final extraSmall = TextStyleSet(baseFont.copyWith(fontSize: 10.sp));

  /// FontSize: 11
  static final semiSmall = TextStyleSet(baseFont.copyWith(fontSize: 11.sp));

  /// FontSize: 12
  static final small = TextStyleSet(baseFont.copyWith(fontSize: 12.sp));

  /// FontSize: 13
  static final semiRegular = TextStyleSet(baseFont.copyWith(fontSize: 13.sp));

  /// FontSize: 14
  static final regular = TextStyleSet(baseFont.copyWith(fontSize: 14.sp));

  /// FontSize: 15
  static final semiMedium = TextStyleSet(baseFont.copyWith(fontSize: 15.sp));

  /// FontSize: 16
  static final medium = TextStyleSet(baseFont.copyWith(fontSize: 16.sp));

  /// FontSize: 17
  static final semiLarge = TextStyleSet(baseFont.copyWith(fontSize: 17.sp));

  /// FontSize: 18
  static final large = TextStyleSet(baseFont.copyWith(fontSize: 18.sp));

  /// FontSize: 20
  static final larger = TextStyleSet(baseFont.copyWith(fontSize: 20.sp));

  /// FontSize: 22
  static final extraLarge = TextStyleSet(baseFont.copyWith(fontSize: 22.sp));
}

abstract class AppFonts {
  static const nunito = 'Nunito';
}

class TextStyleSet {
  TextStyleSet(this.original);

  final TextStyle original;

  /// FontWeight: w200
  TextStyle get extraLight => original.copyWith(fontWeight: FontWeight.w200);

  /// FontWeight: w300
  TextStyle get light => original.copyWith(fontWeight: FontWeight.w300);

  /// FontWeight: w400
  TextStyle get normal => original;

  /// FontWeight: w500
  TextStyle get medium => original.copyWith(fontWeight: FontWeight.w500);

  /// FontWeight: w600
  TextStyle get semiBold => original.copyWith(fontWeight: FontWeight.w600);

  /// FontWeight: w700
  TextStyle get bold => original.copyWith(fontWeight: FontWeight.w700);

  /// FontWeight: w800
  TextStyle get extraBold => original.copyWith(fontWeight: FontWeight.w800);
}
