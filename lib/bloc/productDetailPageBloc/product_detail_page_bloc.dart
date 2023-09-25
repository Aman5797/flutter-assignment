import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_assignment/models/apiResult/api_result.dart';
import 'package:flutter_assignment/models/productDataModel/product_data_model.dart';
import 'package:flutter_assignment/services/apiService/api_repository.dart';
import 'package:flutter_assignment/services/apiService/rest_client.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'product_detail_page_event.dart';

part 'product_detail_page_state.dart';

class ProductDetailPageBloc
    extends Bloc<ProductDetailPageEvent, ProductDetailPageState> {
  ProductDetailPageBloc() : super(const ProductDetailPageState()) {
    on<GetProductData>(_getProductData);
  }

  final ApiRepository _apiRepository = ApiRepository(RestClient());

  Future<void> _getProductData(
      GetProductData event, Emitter<ProductDetailPageState> emit) async {
    emit(const ProductDetailPageState().copyWith(
      isLoading: true,
    ));

    final result = await _apiRepository.getProductDetail(event.id);
    // if (result.apiState.isSucces && result.data is List) {
    //   print("SUCCESS");
    //   final rawData = result.data as List;
    //   if (rawData.isNotEmpty) {
    //     final ProductDataModel itemData =
    //         ProductDataModel.fromJson(rawData.first);
    //     emit(state.copyWith(
    //       isLoading: false,
    //       itemDetail: itemData,
    //       responseStatus: result.apiState,
    //     ));
    //     return;
    //   }
    // }
    emit(state.copyWith(
      isLoading: false,
      itemDetail: result.data,
      responseMessage: result.message,
      responseStatus: result.apiState,
    ));
  }
}
