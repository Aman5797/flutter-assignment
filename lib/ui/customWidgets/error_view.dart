import 'package:flutter/material.dart';
import 'package:flutter_assignment/generated/l10n.dart';
import 'package:flutter_assignment/utils/app_colors.dart';
import 'package:flutter_assignment/utils/app_styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({
    super.key,
    required this.message,
    this.onTryAgain,
    this.textColor = AppColors.white,
  });
  final String message;
  final void Function()? onTryAgain;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            message,
            style: AppStyles.medium.normal.copyWith(
              color: textColor,
            ),
          ),
          if (onTryAgain != null)
            Padding(
              padding: EdgeInsets.only(top: 16.h),
              child: InkWell(
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                onTap: onTryAgain,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 3.h),
                  child: Text(
                    S.current.tryAgain,
                    style: AppStyles.medium.normal.copyWith(
                      color: textColor,
                      decoration: TextDecoration.underline,
                      decorationColor: textColor,
                      decorationThickness: 2,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
