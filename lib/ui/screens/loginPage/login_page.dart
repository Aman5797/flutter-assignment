import 'package:flutter/material.dart';
import 'package:flutter_assignment/bloc/loginPageBloc/login_page_bloc.dart';
import 'package:flutter_assignment/generated/l10n.dart';
import 'package:flutter_assignment/services/navigationService/navigation_service.dart';
import 'package:flutter_assignment/ui/customWidgets/custom_button.dart';
import 'package:flutter_assignment/utils/app_colors.dart';
import 'package:flutter_assignment/utils/app_images.dart';
import 'package:flutter_assignment/utils/app_styles.dart';
import 'package:flutter_assignment/utils/extension_methods.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.charcoalBlack,
      body: SafeArea(
        child: BlocConsumer<LoginPageBloc, LoginPageState>(
          listener: (context, state) {
            if (state.responseStatus.isSucces) {
              context.goNamed(RouteNames.home);
            }
          },
          builder: (context, state) {
            return IgnorePointer(
              ignoring: state.isLoading,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                children: [
                  SizedBox(height: (MediaQuery.sizeOf(context).height * 0.1).h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28.w),
                    child: Image.asset(AppImages.loginImage),
                  ),
                  SizedBox(height: (MediaQuery.sizeOf(context).height * 0.1).h),
                  Center(
                    child: Text(
                      S.current.signInWith,
                      style: AppStyles.medium.bold.toWhite,
                    ),
                  ),
                  SizedBox(height: 23.h),
                  _LoginButton(
                    title: S.current.google,
                    bgColor: AppColors.white,
                    iconBgColor: AppColors.offWhite2,
                    textColor: AppColors.black,
                    icon: AppImages.icGoogle,
                    isLoading: state.isLoading && state.event is GoogleLogin,
                    onPressed: () {
                      context.read<LoginPageBloc>().add(const GoogleLogin());
                    },
                  ),
                  SizedBox(height: 16.h),
                  _LoginButton(
                    title: S.current.facebook,
                    bgColor: AppColors.blue,
                    icon: AppImages.icFacebook,
                    iconBgColor: AppColors.white,
                    isLoading: state.isLoading && state.event is FacebookLogin,
                    onPressed: () {
                      context.read<LoginPageBloc>().add(const FacebookLogin());
                    },
                  ),
                  SizedBox(height: 16.h),
                  _LoginButton(
                    title: S.current.linkedIn,
                    bgColor: AppColors.teal,
                    icon: AppImages.icLinkedin,
                    iconBgColor: AppColors.white,
                    isLoading: state.isLoading && state.event is LinkedinLogin,
                    onPressed: () async {
                      context.read<LoginPageBloc>().add(const LinkedinLogin());
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton({
    required this.title,
    required this.bgColor,
    required this.icon,
    required this.onPressed,
    required this.iconBgColor,
    required this.isLoading,
    this.textColor = AppColors.white,
  });
  final Color bgColor;
  final Color iconBgColor;
  final String icon;
  final String title;
  final void Function() onPressed;
  final bool isLoading;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      isActive: true,
      label: title,
      height: 75,
      enabledColor: bgColor,
      isLoading: isLoading,
      txtStyle: AppStyles.medium.bold.copyWith(color: textColor),
      onPressed: onPressed,
      leadingIcon: Container(
        height: 49.r,
        width: 49.r,
        padding: EdgeInsets.all(10.r),
        margin: EdgeInsets.only(
          right: icon == AppImages.icGoogle
              ? 31.r
              : icon == AppImages.icFacebook
                  ? 19.r
                  : icon == AppImages.icLinkedin
                      ? 24.r
                      : 0,
        ),
        decoration: BoxDecoration(
          color: iconBgColor,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
