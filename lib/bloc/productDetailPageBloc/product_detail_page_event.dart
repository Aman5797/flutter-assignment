part of 'product_detail_page_bloc.dart';

abstract class ProductDetailPageEvent extends Equatable {
  const ProductDetailPageEvent();

  @override
  List<Object> get props => [];
}

class GetProductData extends ProductDetailPageEvent {
  const GetProductData(this.id);
  final int id;
}
