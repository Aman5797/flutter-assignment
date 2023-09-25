import 'package:flutter/material.dart';
import 'package:flutter_assignment/bloc/homePageBloc/home_page_bloc.dart';
import 'package:flutter_assignment/bloc/loginPageBloc/login_page_bloc.dart';
import 'package:flutter_assignment/bloc/productDetailPageBloc/product_detail_page_bloc.dart';
import 'package:flutter_assignment/bloc/profilePageBloc/profile_page_bloc.dart';
import 'package:flutter_assignment/ui/screens/homePage/home_page.dart';
import 'package:flutter_assignment/ui/screens/loginPage/login_page.dart';
import 'package:flutter_assignment/ui/screens/productDetailPage/product_detail_page.dart';
import 'package:flutter_assignment/ui/screens/profilePage/profile_page.dart';
import 'package:flutter_assignment/utils/app_preferences.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

part "route_names.dart";
part "route_param_keys.dart";

abstract class NavigationService {
  static GlobalKey<NavigatorState>? navigatorKey = GlobalKey<NavigatorState>();

  static BuildContext get appContext => navigatorKey!.currentContext!;

  /// The route configuration.
  static final GoRouter routerConfig = GoRouter(
    navigatorKey: navigatorKey,
    redirect: (context, state) {
      if (state.fullPath != RoutePaths.login) {
        return null;
      }
      if (AppPreferences().getUserData() == null) {
        return RoutePaths.login;
      } else {
        return RoutePaths.home;
      }
    },
    routes: <GoRoute>[
      GoRoute(
        name: RouteNames.login,
        path: RoutePaths.login,
        builder: (_, __) => BlocProvider(
          create: (_) => LoginPageBloc(),
          child: const LoginPage(),
        ),
      ),
      GoRoute(
          name: RouteNames.home,
          path: RoutePaths.home,
          builder: (_, __) => BlocProvider(
                create: (_) => HomePageBloc()..add(const GetProductsList()),
                child: const HomePage(),
              ),
          routes: [
            GoRoute(
              name: RouteNames.productDetail,
              path: RoutePaths.productDetail,
              builder: (_, GoRouterState state) {
                final id = int.tryParse(
                        state.pathParameters[RouteParamKeys.id] ?? '') ??
                    -1;
                return BlocProvider(
                  create: (_) =>
                      ProductDetailPageBloc()..add(GetProductData(id)),
                  child: ProductDetailPage(id: id),
                );
              },
            ),
            GoRoute(
              name: RouteNames.profile,
              path: RoutePaths.profile,
              builder: (_, __) => BlocProvider(
                create: (_) => ProfilePageBloc()..add(const GetUserDetails()),
                child: const ProfilePage(),
              ),
            ),
          ]),
    ],
  );
}
