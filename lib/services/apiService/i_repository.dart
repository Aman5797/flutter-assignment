import 'package:flutter_assignment/models/apiResult/api_result.dart';

abstract class IRepository {
  Future<ApiResult> getProductList(Map<String, dynamic> params);
  Future<ApiResult> getProductDetail(int id);
}
