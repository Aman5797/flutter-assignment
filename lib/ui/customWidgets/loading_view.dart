import 'package:flutter/material.dart';
import 'package:flutter_assignment/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({
    super.key,
    this.isPagination = false,
    this.loaderColor = AppColors.offWhite1,
  });
  final bool isPagination;
  final Color loaderColor;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: FittedBox(
      child: SizedBox(
        height: (isPagination ? 20 : 40).w,
        width: (isPagination ? 20 : 40).w,
        child: CircularProgressIndicator(
          color: loaderColor,
          strokeWidth: isPagination ? 2 : 4,
        ),
      ),
    ));
  }
}
