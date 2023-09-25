part of 'product_detail_page_bloc.dart';

class ProductDetailPageState extends Equatable {
  const ProductDetailPageState({
    this.responseStatus = ApiState.none,
    this.isLoading = false,
    this.responseMessage,
    this.itemDetail,
  });
  final bool isLoading;
  final ApiState responseStatus;
  final String? responseMessage;
  final ProductDataModel? itemDetail;

  ProductDetailPageState copyWith({
    bool? isLoading,
    ApiState? responseStatus,
    String? responseMessage,
    ProductDataModel? itemDetail,
  }) =>
      ProductDetailPageState(
        isLoading: isLoading ?? this.isLoading,
        responseStatus: responseStatus ?? ApiState.none,
        responseMessage: responseMessage,
        itemDetail: itemDetail ?? this.itemDetail,
      );

  @override
  List<Object?> get props => [
        isLoading,
        responseStatus,
        responseMessage,
        itemDetail,
      ];
}
