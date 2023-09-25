import 'package:flutter/material.dart';

import 'package:flutter_assignment/bloc/productDetailPageBloc/product_detail_page_bloc.dart';
import 'package:flutter_assignment/generated/l10n.dart';
import 'package:flutter_assignment/models/productDataModel/product_data_model.dart';

import 'package:flutter_assignment/ui/customWidgets/app_network_image.dart';
import 'package:flutter_assignment/ui/customWidgets/custom_appbar.dart';
import 'package:flutter_assignment/ui/customWidgets/error_view.dart';
import 'package:flutter_assignment/ui/customWidgets/loading_view.dart';
import 'package:flutter_assignment/utils/app_colors.dart';
import 'package:flutter_assignment/utils/app_images.dart';
import 'package:flutter_assignment/utils/app_styles.dart';
import 'package:flutter_assignment/utils/extension_methods.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key, required this.id});
  final int id;

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
        child: BlocBuilder<ProductDetailPageBloc, ProductDetailPageState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const LoadingView(
                loaderColor: AppColors.charcoalBlack,
              );
            } else if (state.itemDetail == null) {
              return ErrorView(
                message: state.responseMessage ?? S.current.somethingWentWrong,
                textColor: AppColors.charcoalBlack,
                onTryAgain: () => context
                    .read<ProductDetailPageBloc>()
                    .add(GetProductData(id)),
              );
            }
            final List<Volume> properties = [
              Volume(
                unit: S.current.abv,
                value: state.itemDetail!.abv,
              ),
              Volume(
                unit: S.current.ibu,
                value: state.itemDetail!.ibu,
              ),
              Volume(
                unit: S.current.targetFg,
                value: state.itemDetail!.target_fg,
              ),
              Volume(
                unit: S.current.targetOg,
                value: state.itemDetail!.target_og,
              ),
              Volume(
                unit: S.current.ebc,
                value: state.itemDetail!.ebc,
              ),
              Volume(
                unit: S.current.srm,
                value: state.itemDetail!.srm,
              ),
              Volume(
                unit: S.current.ph,
                value: state.itemDetail!.ph,
              ),
              Volume(
                unit: S.current.attentionLevel,
                value: state.itemDetail!.attenuation_level,
              ),
            ];
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                state.itemDetail!.name,
                                style: AppStyles.medium.bold.toLightGrey,
                              ),
                              SizedBox(height: 12.h),
                              Text(
                                state.itemDetail!.tagline,
                                style: AppStyles.regular.normal.toDarkGrey1,
                              ),
                              SizedBox(height: 21.h),
                            ],
                          ),
                        ),
                        SizedBox(height: 67.h),
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        padding: EdgeInsets.only(
                            left: 30.w, right: 30.w, top: 19.h, bottom: 13.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.lightGrey2,
                        ),
                        child: AppCacheNetworkImage(
                          height: 198,
                          width: 98,
                          fit: BoxFit.contain,
                          image: state.itemDetail!.image_url,
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 28.h),
                      Text(
                        'Description',
                        style: AppStyles.medium.medium.toCharcoalBlack,
                      ),
                      SizedBox(height: 11.h),
                      Text(
                        state.itemDetail!.description,
                        style: AppStyles.regular.normal.toDarkGrey1,
                      ),
                      SizedBox(height: 22.h),
                      Text(
                        'First Brewed',
                        style: AppStyles.medium.medium.toCharcoalBlack,
                      ),
                      SizedBox(height: 11.h),
                      Text(
                        state.itemDetail!.first_brewed,
                        style: AppStyles.regular.normal.toDarkGrey1,
                      ),
                      SizedBox(height: 22.h),
                      Text(
                        'Getting know your product better',
                        style: AppStyles.medium.medium.toCharcoalBlack,
                      ),
                    ],
                  ),
                ),
                GridView.builder(
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.w, vertical: 22.h),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 14.w,
                    mainAxisSpacing: 28.h,
                    childAspectRatio: 3.5,
                  ),
                  itemBuilder: (_, index) =>
                      _ProductPropertiesView(properties[index]),
                  itemCount: properties.length,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

class _ProductPropertiesView extends StatelessWidget {
  const _ProductPropertiesView(this.item);
  final Volume item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 40.w,
          width: 40.w,
          padding: EdgeInsets.all(8.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: AppColors.charcoalBlack,
          ),
          child: SvgPicture.asset(
            AppImages.icCheers,
          ),
        ),
        SizedBox(width: 11.h),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.unit,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppStyles.regular.medium.toCharcoalBlack,
              ),
              SizedBox(height: 5.h),
              Text(
                item.value.toString(),
                style: AppStyles.regular.normal.toDarkGrey1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
