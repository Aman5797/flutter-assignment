import 'package:flutter/material.dart';
import 'package:flutter_assignment/utils/app_colors.dart';
import 'package:flutter_assignment/utils/app_styles.dart';
import 'package:flutter_assignment/utils/extension_methods.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    required this.isActive,
    required this.label,
    this.isLoading = false,
    this.enabledColor = AppColors.red,
    this.loaderColor = AppColors.charcoalBlack,
    this.elevation,
    this.height = 75,
    this.disabledColor = AppColors.red,
    this.txtStyle,
    this.leadingIcon,
  });

  final Widget? leadingIcon;
  final void Function()? onPressed;
  final bool isActive;
  final bool isLoading;
  final String label;
  final Color enabledColor;
  final Color loaderColor;
  final Color disabledColor;
  final double? elevation;
  final double height;
  final TextStyle? txtStyle;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: label,
      tooltip: label,
      child: SizedBox(
        width: double.infinity,
        height: height.r,
        child: TextButton(
          style: ButtonStyle(
              elevation: MaterialStateProperty.all<double?>(elevation),
              padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(horizontal: 16.w, vertical: 13.h),
              ),
              backgroundColor: isActive
                  ? MaterialStateProperty.all<Color>(enabledColor)
                  : MaterialStateProperty.all<Color>(disabledColor),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r)),
              ),
              splashFactory: NoSplash.splashFactory),
          onPressed: !isLoading && isActive
              ? () {
                  FocusScope.of(context).unfocus();
                  onPressed?.call();
                }
              : null,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (leadingIcon != null) leadingIcon!,
              isLoading
                  ? FittedBox(
                      child: Center(
                        child: CircularProgressIndicator(
                          color: loaderColor,
                          strokeWidth: 3,
                        ),
                      ),
                    )
                  : Text(
                      label,
                      style: txtStyle ?? AppStyles.medium.bold.toWhite,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
