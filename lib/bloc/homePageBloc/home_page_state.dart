part of 'home_page_bloc.dart';

class HomePageState extends Equatable {
  const HomePageState({
    this.responseStatus = ApiState.none,
    this.isLoading = false,
    this.responseMessage,
    this.productsList,
    this.page = 1,
    this.limit = 10,
    this.hasMoreData = true,
    this.loadingMoreData = false,
  });
  final bool isLoading;
  final ApiState responseStatus;
  final String? responseMessage;
  final List<ProductDataModel>? productsList;
  final int page;
  final int limit;
  final bool hasMoreData;
  final bool loadingMoreData;

  HomePageState copyWith(
          {bool? isLoading,
          ApiState? responseStatus,
          String? responseMessage,
          List<ProductDataModel>? productsList,
          int? page,
          int? limit,
          bool? hasMoreData,
          bool? loadingMoreData}) =>
      HomePageState(
        isLoading: isLoading ?? this.isLoading,
        responseStatus: responseStatus ?? ApiState.none,
        responseMessage: responseMessage,
        productsList: productsList ?? this.productsList,
        page: page ?? this.page,
        limit: limit ?? 10,
        hasMoreData: hasMoreData ?? this.hasMoreData,
        loadingMoreData: loadingMoreData ?? this.loadingMoreData,
      );

  @override
  List<Object?> get props => [
        isLoading,
        responseStatus,
        responseMessage,
        productsList,
        hasMoreData,
        loadingMoreData
      ];
}
