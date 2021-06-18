// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:auto_route/auto_route.dart';
import 'package:cooksoc/core/navigation/navigation.dart' as _i5;
import 'package:cooksoc/core/navigation/router.dart' as _i3;
import 'package:cooksoc/features/auth/screens/loading_screen.dart' as _i4;
import 'package:cooksoc/features/auth/screens/sign_in_screen.dart' as _i6;
import 'package:cooksoc/features/home/screens/home_screen.dart' as _i7;
import 'package:cooksoc/features/recipes/screens/create_recipe_screen.dart'
    as _i8;
import 'package:flutter/material.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    AuthRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.AuthWrapper();
        }),
    LoadingRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.LoadingScreen();
        }),
    HomeRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args =
              data.argsAs<HomeRouterArgs>(orElse: () => const HomeRouterArgs());
          return _i5.AutoRouter(
              key: args.key,
              navigatorObservers: args.navigatorObservers,
              builder: args.builder,
              navRestorationScopeId: args.navRestorationScopeId,
              navigatorKey: args.navigatorKey,
              inheritNavigatorObservers: args.inheritNavigatorObservers);
        }),
    SignInRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.SignInScreen();
        }),
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.HomeScreen();
        }),
    CreateRecipeRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i8.CreateRecipeScreen();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(AuthRouter.name, path: '/', children: [
          _i1.RouteConfig(LoadingRouter.name, path: ''),
          _i1.RouteConfig(HomeRouter.name, path: 'home', children: [
            _i1.RouteConfig(HomeRoute.name, path: ''),
            _i1.RouteConfig(CreateRecipeRouter.name, path: 'new-recipe')
          ]),
          _i1.RouteConfig(SignInRouter.name, path: 'start')
        ]),
        _i1.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

class AuthRouter extends _i1.PageRouteInfo {
  const AuthRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'AuthRouter';
}

class LoadingRouter extends _i1.PageRouteInfo {
  const LoadingRouter() : super(name, path: '');

  static const String name = 'LoadingRouter';
}

class HomeRouter extends _i1.PageRouteInfo<HomeRouterArgs> {
  HomeRouter(
      {_i2.Key? key,
      List<_i2.NavigatorObserver> Function() navigatorObservers =
          AutoRouterDelegate.defaultNavigatorObserversBuilder,
      _i2.Widget Function(_i2.BuildContext, _i2.Widget)? builder,
      String? navRestorationScopeId,
      _i2.GlobalKey<_i2.NavigatorState>? navigatorKey,
      bool inheritNavigatorObservers = true,
      List<_i1.PageRouteInfo>? children})
      : super(name,
            path: 'home',
            args: HomeRouterArgs(
                key: key,
                navigatorObservers: navigatorObservers,
                builder: builder,
                navRestorationScopeId: navRestorationScopeId,
                navigatorKey: navigatorKey,
                inheritNavigatorObservers: inheritNavigatorObservers),
            initialChildren: children);

  static const String name = 'HomeRouter';
}

class HomeRouterArgs {
  const HomeRouterArgs(
      {this.key,
      this.navigatorObservers =
          AutoRouterDelegate.defaultNavigatorObserversBuilder,
      this.builder,
      this.navRestorationScopeId,
      this.navigatorKey,
      this.inheritNavigatorObservers = true});

  final _i2.Key? key;

  final List<_i2.NavigatorObserver> Function() navigatorObservers;

  final _i2.Widget Function(_i2.BuildContext, _i2.Widget)? builder;

  final String? navRestorationScopeId;

  final _i2.GlobalKey<_i2.NavigatorState>? navigatorKey;

  final bool inheritNavigatorObservers;
}

class SignInRouter extends _i1.PageRouteInfo {
  const SignInRouter() : super(name, path: 'start');

  static const String name = 'SignInRouter';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '');

  static const String name = 'HomeRoute';
}

class CreateRecipeRouter extends _i1.PageRouteInfo {
  const CreateRecipeRouter() : super(name, path: 'new-recipe');

  static const String name = 'CreateRecipeRouter';
}
