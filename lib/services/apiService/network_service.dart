import 'package:flutter_assignment/services/apiService/rest_client.dart';

abstract class NetworkService {
  RestClient restClient;
  NetworkService(this.restClient);
}
