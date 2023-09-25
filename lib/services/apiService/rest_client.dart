import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_assignment/models/apiResult/api_result.dart';
import 'package:flutter_assignment/ui/dialogs/app_snackbar.dart';
import 'package:flutter_assignment/utils/app_constants.dart';
import 'package:flutter_assignment/utils/app_keys.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:flutter_assignment/generated/l10n.dart';

class RestClient {
  Map<String, dynamic> headers = {
    HttpHeaders.contentTypeHeader: "application/json",
  };

  late final Dio _dio;

  RestClient() {
    BaseOptions options = BaseOptions(
      baseUrl: ApiUrl.appBaseUrl,
      connectTimeout: const Duration(minutes: 1),
      receiveTimeout: const Duration(minutes: 1),
      responseType: ResponseType.json,
      contentType: "application/json",
      headers: headers,
      followRedirects: false,
      validateStatus: (status) {
        return status! < 500;
      },
    );

    _dio = Dio(options);
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, requestInterceptorHandler) {
          return requestInterceptorHandler.next(options);
        },
        onError: (dioException, errorInterceptorHandler) {
          log("Message = Dio Exception ${dioException.response.toString()}");
          log("Message = Dio Exception ${dioException.requestOptions.path.toString()}");
          errorInterceptorHandler.next(dioException);
        },
      ),
    );
  }

  Future<bool> hasConnected() async {
    try {
      if (kIsWeb) return true;
      bool result = await InternetConnectionChecker().hasConnection;
      if (result == true) {
        return true;
      } else {
        return false;
      }
    } on SocketException catch (_) {
      return false;
    }
  }

  Future<ApiResult> getDioAsync(String resourcePath) async {
    bool isConnectedToInternet = await hasConnected();
    if (isConnectedToInternet) {
      try {
        log("ResourcePath GET-- $resourcePath");
        log(_dio.options.baseUrl + resourcePath);
        log(_dio.options.headers.toString());
        var response = await _dio.get(resourcePath);
        log("API:$resourcePath \n Response $response");
        return processDioResponse(response);
      } catch (error) {
        log("Exception occurred: $error ");
        return ApiResult(
          apiState: ApiState.failed,
          message: "Exception occurred: $error ",
        );
      }
    } else {
      return ApiResult(
        apiState: ApiState.noInternet,
        message: S.current.noInternetMessage,
      );
    }
  }

  Future<ApiResult> getDioAsyncWithParams(
      String resourcePath, Map<String, dynamic> queryParams) async {
    bool isConnectedToInternet = await hasConnected();
    if (isConnectedToInternet) {
      try {
        log("QueryParams $queryParams");
        log("ResourcePath GET-- $resourcePath");
        log(_dio.options.baseUrl + resourcePath);
        log(headers.toString());

        var response =
            await _dio.get(resourcePath, queryParameters: queryParams);
        log("API:$resourcePath \nResponse $response");
        return processDioResponse(response);
      } catch (error) {
        log("Exception occurred: $error ");
        return ApiResult(
          apiState: ApiState.failed,
          message: "Exception occurred: $error ",
        );
      }
    } else {
      return ApiResult(
        apiState: ApiState.noInternet,
        message: S.current.noInternetMessage,
      );
    }
  }

  ApiResult processDioResponse(Response? response) {
    if (response == null) {
      return ApiResult(
        apiState: ApiState.failed,
      );
    } else if ((response.statusCode ?? 0) >= 400) {
      log("Error message :- ${response.statusMessage} ${response.requestOptions.path}");
      int statusCode = response.statusCode ?? 0;
      String message =
          response.data?[ApiKeys.message] ?? S.current.somethingWentWrong;
      AppSnackbar().rawSnackbar(message);
      return ApiResult(
        statusCode: statusCode,
        message: message,
        apiState: ApiState.failed,
      );
    } else if (response.data == null) {
      int statusCode = response.statusCode ?? 0;
      String? message = statusCode >= 200 && statusCode < 500
          ? response.statusMessage
          : S.current.somethingWentWrong;
      AppSnackbar().rawSnackbar(S.current.somethingWentWrong);
      return ApiResult(
        statusCode: statusCode,
        message: message,
        apiState: ApiState.failed,
      );
    } else {
      dynamic result = response.data;
      if (result is List) {
        var data = result;
        return ApiResult(
          data: data,
          apiState: ApiState.success,
        );
      } else {
        return ApiResult(
          data: result,
          message: S.current.somethingWentWrong,
          apiState: ApiState.failed,
        );
      }
    }
  }
}
