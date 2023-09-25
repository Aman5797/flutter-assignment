enum ApiState {
  none,
  loading,
  refresh,
  success,
  failed,
  noInternet,
  noDataFound;

  bool get isSucces => this == ApiState.success;

  bool get isFailed => this == ApiState.failed;
}

// Model for API result
class ApiResult<T> {
  ApiResult({
    this.data,
    this.apiState = ApiState.none,
    this.statusCode,
    this.error,
    this.message,
  });

  final T? data;
  ApiState apiState;
  int? statusCode;
  String? error;
  String? message;

  ApiResult<X> copyWith<X>({
    required X data,
    ApiState? apiState,
    int? statusCode,
    String? error,
    String? message,
  }) =>
      ApiResult(
        data: data,
        apiState: apiState ?? this.apiState,
        statusCode: statusCode ?? this.statusCode,
        error: error ?? this.error,
        message: message ?? this.message,
      );
}
