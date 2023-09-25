part of "navigation_service.dart";

abstract class RouteNames {
  static const String login = "login";
  static const String home = "home";
  static const String profile = "profile";
  static const String productDetail = "productDetail";
}

abstract class RoutePaths {
  static const String login = "/";
  static const String home = "/home";
  static const String profile = "profile";
  static const String productDetail = "productDetail/:${RouteParamKeys.id}";
}
