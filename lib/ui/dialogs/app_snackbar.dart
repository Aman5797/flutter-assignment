import 'package:flutter/material.dart';
import 'package:flutter_assignment/services/navigationService/navigation_service.dart';
import 'package:flutter_assignment/utils/app_colors.dart';
import 'package:flutter_assignment/utils/app_styles.dart';
import 'package:flutter_assignment/utils/extension_methods.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSnackbar {
  static final AppSnackbar _instance = AppSnackbar._internal();

  AppSnackbar._internal();

  factory AppSnackbar() => _instance;

  BuildContext get context => NavigationService.appContext;

  ///[duration] in seconds
  void rawSnackbar(
    String message, {
    int? duration,
  }) {
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(
        content: Text(message),
        duration: Duration(seconds: duration ?? 3),
      ));
  }

  void toastMessage(
    String message, {
    Widget? leading,
    int? duration,
  }) {
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        width: 300.w,
        elevation: 0,
        backgroundColor: AppColors.transparent,
        content: Container(
          decoration: BoxDecoration(
            color: AppColors.black.withOpacity(0.7),
            borderRadius: BorderRadius.circular(100),
          ),
          padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 5.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (leading != null)
                Padding(
                  padding: EdgeInsets.only(right: 5.w),
                  child: leading,
                ),
              Flexible(
                child: Text(
                  message,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.semiMedium.semiBold.toWhite,
                ),
              ),
            ],
          ),
        ),
        duration: Duration(seconds: duration ?? 3),
      ));
  }

  void snackbarWithAction(String messsage, {SnackBarAction? action}) {
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            messsage,
            style: AppStyles.regular.normal.toWhite,
          ),
          duration: const Duration(seconds: 4),
          action: action,
        ),
      );
  }
}
