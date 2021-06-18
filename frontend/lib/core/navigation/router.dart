// ignore_for_file: unused_import
import 'package:cooksoc/core/navigation/navigation.dart';
import 'package:cooksoc/features/auth/notifiers/auth_notifier.dart';
import 'package:cooksoc/features/auth/screens/sign_in_screen.dart';
import 'package:cooksoc/features/auth/screens/loading_screen.dart';
import 'package:cooksoc/features/home/screens/home_screen.dart';
import 'package:cooksoc/features/recipes/screens/create_recipe_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/*@MaterialAutoRouter(
  replaceInRouteName: 'Adaptor,Route',
  preferRelativeImports: false,
  routes: [
    AutoRoute(
      path: '/',
      page: AuthWrapper,
      name: 'AuthRouter',
      children: [
        AutoRoute(
          path: '',
          page: LoadingScreen,
          name: 'LoadingRouter',
        ),
        AutoRoute(
          path: 'home',
          page: AutoRouter,
          name: 'HomeRouter',
          children: [
            AutoRoute(path: '', page: HomeScreen, name: 'HomeRoute'),
            AutoRoute(
              path: 'new-recipe',
              page: CreateRecipeScreen,
              name: 'CreateRecipeRouter',
            ),
          ],
        ),
        AutoRoute(
          path: 'start',
          page: SignInScreen,
          name: 'SignInRouter',
        ),
      ],
    ),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)*/
class $AppRouter {}

class AuthWrapper extends ConsumerWidget {
  const AuthWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final union = watch(authProvider).authUnion;

    return AutoRouter.declarative(
      navRestorationScopeId: 'root',
      routes: (_) => [
        union.when(
          loading: () => LoadingRouter(),
          unauthenticated: () => SignInRouter(),
          authenticated: (user) => HomeRouter(),
        )
      ],
    );
  }
}
