import 'dart:async';
import 'dart:developer';
import 'package:equatable/equatable.dart';
import 'package:flutter_assignment/models/apiResult/api_result.dart';
import 'package:flutter_assignment/models/productDataModel/product_data_model.dart';
import 'package:flutter_assignment/services/apiService/api_repository.dart';
import 'package:flutter_assignment/services/apiService/rest_client.dart';
import 'package:flutter_assignment/utils/app_keys.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_page_event.dart';

part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(const HomePageState()) {
    on<GetProductsList>(_getInitialProductList);
    on<GetMoreProductsList>(_getMoreProductList);
  }

  final ApiRepository _apiRepository = ApiRepository(RestClient());

  Future<void> _getInitialProductList(
      GetProductsList event, Emitter<HomePageState> emit) async {
    emit(const HomePageState().copyWith(
      isLoading: true,
    ));
    final params = {
      ApiKeys.page: state.page,
      ApiKeys.perPage: state.limit,
    };
    final result = await _apiRepository.getProductList(params);
    if (result.apiState.isSucces && result.data != null) {
      emit(state.copyWith(
        isLoading: false,
        productsList: result.data,
        responseStatus: result.apiState,
        page: state.page + 1,
        hasMoreData: result.data!.length >= state.limit,
      ));
      return;
    }
    // if (result.apiState.isSucces && result.data is List) {
    //   print("SUCCESS");
    //   final rawData = result.data as List;
    //   final List<ProductDataModel> productsList =
    //       rawData.map((e) => ProductDataModel.fromJson(e)).toList();
    //   emit(state.copyWith(
    //     isLoading: false,
    //     productsList: productsList,
    //     responseStatus: result.apiState,
    //     page: state.page + 1,
    //   ));
    //   return;
    // }
    emit(state.copyWith(
      isLoading: false,
      responseMessage: result.message,
      responseStatus: result.apiState,
    ));
  }

  Future<void> _getMoreProductList(
      GetMoreProductsList event, Emitter<HomePageState> emit) async {
    if (!state.hasMoreData || state.loadingMoreData) {
      log('No more data to fetch.');
      return;
    }
    emit(state.copyWith(
      loadingMoreData: true,
    ));
    final params = {
      ApiKeys.page: state.page,
      ApiKeys.perPage: state.limit,
    };
    var result = await _apiRepository.getProductList(params);
    if (result.apiState.isSucces && result.data != null) {
      state.productsList?.addAll(result.data!);
      emit(state.copyWith(
        loadingMoreData: false,
        productsList: state.productsList,
        responseStatus: result.apiState,
        page: state.page + 1,
        hasMoreData: result.data!.length >= state.limit,
      ));
      return;
    }
    // if (result.apiState.isSucces && result.data is List) {
    //   final rawData = result.data as List;
    //   final List<ProductDataModel> productsList =
    //       rawData.map((e) => ProductDataModel.fromJson(e)).toList();
    //   bool hasMoreData = true;
    //   if ((state.productsList?.length ?? 0) < state.limit) {
    //     hasMoreData = false;
    //   }
    //   state.productsList?.addAll(productsList);
    //   emit(state.copyWith(
    //     loadingMoreData: false,
    //     productsList: state.productsList,
    //     responseStatus: result.apiState,
    //     page: state.page + 1,
    //     hasMoreData: hasMoreData,
    //   ));
    //   return;
    // }
    emit(state.copyWith(
      loadingMoreData: false,
      responseMessage: result.message,
      responseStatus: result.apiState,
    ));
  }
}
