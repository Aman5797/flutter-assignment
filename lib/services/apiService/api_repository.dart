import 'package:flutter_assignment/models/apiResult/api_result.dart';
import 'package:flutter_assignment/models/productDataModel/product_data_model.dart';
import 'package:flutter_assignment/services/apiService/i_repository.dart';
import 'package:flutter_assignment/services/apiService/network_service.dart';
import 'package:flutter_assignment/services/apiService/rest_client.dart';
import 'package:flutter_assignment/utils/api_path.dart';

class ApiRepository extends NetworkService implements IRepository {
  ApiRepository(RestClient restClient) : super(restClient);

  @override
  Future<ApiResult<List<ProductDataModel>?>> getProductList(
      Map<String, dynamic> params) async {
    List<ProductDataModel>? productsList;
    final result =
        await restClient.getDioAsyncWithParams(ApiPath.beers, params);

    if (result.apiState.isSucces && result.data is List) {
      final rawData = result.data as List;
      productsList = rawData.map((e) => ProductDataModel.fromJson(e)).toList();
    }

    return result.copyWith<List<ProductDataModel>?>(data: productsList);
  }

  @override
  Future<ApiResult<ProductDataModel?>> getProductDetail(int id) async {
    ProductDataModel? data;
    ApiResult result = await restClient.getDioAsync('${ApiPath.beers}/$id');
    if (result.apiState.isSucces && result.data is List) {
      final rawData = result.data as List;
      data = ProductDataModel.fromJson(rawData.first);
    }
    return result.copyWith<ProductDataModel?>(data: data);
  }
}
