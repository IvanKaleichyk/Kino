// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../framework/fragments/auth/tmdb/ui/auth_tmdb_screen.dart' as _i3;
import '../framework/fragments/home/home_screen.dart' as _i1;
import '../framework/fragments/start/ui/start_screen.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<_i1.HomeScreen>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    StartRoute.name: (routeData) {
      return _i4.MaterialPageX<_i2.StartScreen>(
          routeData: routeData, child: const _i2.StartScreen());
    },
    AuthRoute.name: (routeData) {
      return _i4.MaterialPageX<_i3.AuthScreen>(
          routeData: routeData, child: const _i3.AuthScreen());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig('/#redirect',
            path: '/', redirectTo: 'start', fullMatch: true),
        _i4.RouteConfig(HomeRoute.name, path: 'home'),
        _i4.RouteConfig(StartRoute.name, path: 'start'),
        _i4.RouteConfig(AuthRoute.name, path: 'auth')
      ];
}

/// generated route for [_i1.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: 'home');

  static const String name = 'HomeRoute';
}

/// generated route for [_i2.StartScreen]
class StartRoute extends _i4.PageRouteInfo<void> {
  const StartRoute() : super(name, path: 'start');

  static const String name = 'StartRoute';
}

/// generated route for [_i3.AuthScreen]
class AuthRoute extends _i4.PageRouteInfo<void> {
  const AuthRoute() : super(name, path: 'auth');

  static const String name = 'AuthRoute';
}
