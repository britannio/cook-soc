import 'package:cooksoc/core/graphql/links/auth_link.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry/typed_links.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:cooksoc/dependency_injection.config.dart' show GetItInjectableX;

final sl = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: false,
  asExtension: true,
)
Future<void> configureDI(String environment) async {
  await Firebase.initializeApp();
  await sl.$initGetIt(environment: environment);
}

@module
abstract class RegisterModule {
  @preResolve
  @LazySingleton(env: Env.main)
  Future<SharedPreferences> sharedPreferences() =>
      SharedPreferences.getInstance();

  @LazySingleton(env: Env.main)
  InAppReview inAppReview() => InAppReview.instance;

  @preResolve
  @LazySingleton(env: Env.main)
  Future<PackageInfo> packageInfo() => PackageInfo.fromPlatform();

  @LazySingleton(env: Env.main)
  TypedLink ferryClient() {
    final authLink = AuthLink();
    final httpLink = HttpLink('https://cook-soc-api.herokuapp.com/graphql');
    final link = authLink.concat(httpLink);

    return TypedLink.from([
      RequestControllerTypedLink(),
      ErrorTypedLink(),
      AddTypenameTypedLink(),
      GqlTypedLink(link),
    ]);
  }
}

abstract class Env {
  static const test = 'test';
  static const web = 'web';
  static const nonWeb = 'nonWeb';
  static const main = [web, nonWeb];
}
