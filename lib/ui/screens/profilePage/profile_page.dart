import 'package:flutter/material.dart';
import 'package:flutter_assignment/bloc/profilePageBloc/profile_page_bloc.dart';
import 'package:flutter_assignment/generated/l10n.dart';
import 'package:flutter_assignment/services/navigationService/navigation_service.dart';
import 'package:flutter_assignment/ui/customWidgets/app_network_image.dart';
import 'package:flutter_assignment/ui/customWidgets/custom_appbar.dart';
import 'package:flutter_assignment/ui/customWidgets/custom_button.dart';
import 'package:flutter_assignment/ui/customWidgets/error_view.dart';
import 'package:flutter_assignment/ui/customWidgets/loading_view.dart';
import 'package:flutter_assignment/utils/app_colors.dart';
import 'package:flutter_assignment/utils/app_styles.dart';
import 'package:flutter_assignment/utils/extension_methods.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppbar(
        leadingIcon: Icons.arrow_back,
        onTapLeading: () {
          context.pop();
        },
      ),
      body: SafeArea(
        child: BlocConsumer<ProfilePageBloc, ProfilePageState>(
          listener: (context, state) {
            if (state.event is LogoutUser && state.responseStatus.isSucces) {
              context.goNamed(RouteNames.login);
            }
          },
          builder: (context, state) {
            if (state.isLoading && state.event is GetUserDetails) {
              return const LoadingView(
                loaderColor: AppColors.charcoalBlack,
              );
            } else if (state.userDetail == null) {
              return ErrorView(
                message: state.responseMessage ?? S.current.somethingWentWrong,
                textColor: AppColors.charcoalBlack,
                onTryAgain: () =>
                    context.read<ProfilePageBloc>().add(const GetUserDetails()),
              );
            }

            return ListView(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 250.h,
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                              horizontal: 21.w, vertical: 16.h),
                          decoration: BoxDecoration(
                            color: AppColors.charcoalBlack,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12.r),
                            ),
                          ),
                        ),
                        SizedBox(height: 101.h),
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      child: AppCacheNetworkImage(
                        height: 267,
                        width: 267,
                        borderRadius: 20,
                        fit: BoxFit.cover,
                        image: state.userDetail!.profileImage,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 40.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _UserDataView(
                        label: 'Name',
                        value: state.userDetail?.fullName ?? '',
                      ),
                      SizedBox(height: 20.h),
                      _UserDataView(
                        label: 'Email Id',
                        value: state.userDetail?.emailAddress ?? '',
                      ),
                      SizedBox(height: 76.h),
                      CustomButton(
                        isActive: true,
                        height: 75,
                        label: 'Logout',
                        isLoading: state.isLoading && state.event is LogoutUser,
                        onPressed: () {
                          context
                              .read<ProfilePageBloc>()
                              .add(const LogoutUser());
                        },
                      ),
                      SizedBox(height: 31.h),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _UserDataView extends StatelessWidget {
  const _UserDataView({required this.label, required this.value});
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppStyles.medium.bold.toDarkGrey2,
        ),
        SizedBox(height: 9.h),
        Container(
          height: 75.h,
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 28.h, horizontal: 11.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.lightGrey3,
          ),
          child: Text(
            value,
            style: AppStyles.medium.bold.toCharcoalBlack,
          ),
        ),
      ],
    );
  }
}
