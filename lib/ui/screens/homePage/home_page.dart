import 'package:flutter/material.dart';
import 'package:flutter_assignment/bloc/homePageBloc/home_page_bloc.dart';
import 'package:flutter_assignment/generated/l10n.dart';
import 'package:flutter_assignment/models/productDataModel/product_data_model.dart';
import 'package:flutter_assignment/services/navigationService/navigation_service.dart';
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
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _addPagination();
  }

  void _addPagination() {
    _scrollController.addListener(
      () {
        if (_scrollController.hasClients &&
            _scrollController.position.maxScrollExtent ==
                _scrollController.position.pixels) {
          //To load more comments
          context.read<HomePageBloc>().add(const GetMoreProductsList());
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        leadingIcon: Icons.person_outline_rounded,
        onTapLeading: () {
          context.goNamed(RouteNames.profile);
        },
      ),
      backgroundColor: AppColors.charcoalBlack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 16.h),
              child: Text(
                S.current.timeToCheers,
                style: AppStyles.medium.bold.toLightGrey,
              ),
            ),
            Expanded(
              child: BlocBuilder<HomePageBloc, HomePageState>(
                buildWhen: (previous, current) =>
                    previous.isLoading != current.isLoading ||
                    previous.loadingMoreData != current.loadingMoreData ||
                    previous.productsList != current.productsList,
                builder: (_, state) {
                  if (state.isLoading) {
                    return const LoadingView();
                  } else if (state.productsList == null) {
                    return ErrorView(
                      message:
                          state.responseMessage ?? S.current.somethingWentWrong,
                      onTryAgain: () => context
                          .read<HomePageBloc>()
                          .add(const GetProductsList()),
                    );
                  }
                  return Column(
                    children: [
                      Expanded(
                        child: RefreshIndicator(
                          onRefresh: () async {
                            context
                                .read<HomePageBloc>()
                                .add(const GetProductsList());
                          },
                          child: GridView.builder(
                            controller: _scrollController,
                            padding: EdgeInsets.symmetric(
                                horizontal: 14.w, vertical: 14.h),
                            gridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 185.w,
                              crossAxisSpacing: 14.w,
                              mainAxisSpacing: 28.h,
                              childAspectRatio: 185 / 298, //298
                            ),
                            itemBuilder: (_, index) =>
                                _GridItem(state.productsList![index]),
                            itemCount: state.productsList?.length ?? 0,
                          ),
                        ),
                      ),
                      if (state.loadingMoreData)
                        const LoadingView(isPagination: true),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _GridItem extends StatelessWidget {
  const _GridItem(this.data);
  final ProductDataModel data;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.transparent,
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
        onTap: () {
          context.goNamed(
            RouteNames.productDetail,
            pathParameters: {RouteParamKeys.id: data.id.toString()},
          );
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12.r),
          child: Ink(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(12.r),
              boxShadow: const [
                BoxShadow(
                  color: AppColors.shadowColor,
                  blurRadius: 48,
                  offset: Offset(0, 2),
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned.fill(
                        child: Image.asset(
                          AppImages.bgImage,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 12.w, right: 12.w, top: 12.h, bottom: 6.h),
                        child: Column(
                          children: [
                            Flexible(
                              child:
                                  AppCacheNetworkImage(image: data.image_url),
                            ),
                            SizedBox(height: 4.h),
                            Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 7.w, vertical: 3.h),
                              decoration: BoxDecoration(
                                color: AppColors.charcoalBlack,
                                borderRadius: BorderRadius.circular(3.r),
                              ),
                              child: Text(
                                '${S.current.firstBrewed}: ${data.first_brewed}',
                                style: AppStyles.small.normal.toOffWhite1,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.only(left: 12.w, right: 12.w, top: 14.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data.name,
                        style: AppStyles.regular.medium.toCharcoalBlack,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 7.h),
                      Flexible(
                        child: Text(
                          data.description,
                          style: AppStyles.small.normal.toDarkGrey1.copyWith(
                            height: 1.5,
                            letterSpacing: 1,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Row(
                        children: [
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  S.current.abv,
                                  style: AppStyles.small.medium,
                                ),
                                Text(
                                  data.abv.toString(),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppStyles.small.normal.toDarkGrey1,
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 16.w),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  S.current.ibu,
                                  style: AppStyles.small.medium,
                                ),
                                Text(
                                  data.ibu.toString(),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppStyles.small.normal.toDarkGrey1,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
