// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cooksoc/dependency_injection.dart' as _i10;
import 'package:cooksoc/features/auth/notifiers/auth_notifier.dart' as _i7;
import 'package:cooksoc/features/auth/notifiers/sign_in_notifier.dart' as _i9;
import 'package:cooksoc/features/recipes/notifiers/create_recipe_notifier.dart'
    as _i8;
import 'package:ferry/ferry.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:in_app_review/in_app_review.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:package_info_plus/package_info_plus.dart' as _i4;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

const String _web = 'web';
const String _nonWeb = 'nonWeb';

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// an extension to register the provided dependencies inside of [GetIt]
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of provided dependencies inside of [GetIt]
  Future<_i1.GetIt> $initGetIt(
      {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
    final gh = _i2.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.InAppReview>(() => registerModule.inAppReview(),
        registerFor: {_web, _nonWeb});
    await gh.lazySingletonAsync<_i4.PackageInfo>(
        () => registerModule.packageInfo(),
        registerFor: {_web, _nonWeb},
        preResolve: true);
    await gh.lazySingletonAsync<_i5.SharedPreferences>(
        () => registerModule.sharedPreferences(),
        registerFor: {_web, _nonWeb},
        preResolve: true);
    gh.lazySingleton<_i6.TypedLink>(() => registerModule.ferryClient(),
        registerFor: {_web, _nonWeb});
    gh.lazySingleton<_i7.AuthNotifier>(
        () => _i7.AuthNotifier(
            get<_i6.TypedLink>(), get<_i5.SharedPreferences>()),
        registerFor: {_web, _nonWeb});
    gh.factory<_i8.CreateRecipeNotifier>(
        () => _i8.CreateRecipeNotifier(get<_i6.TypedLink>()),
        registerFor: {_web, _nonWeb});
    gh.factory<_i9.SignInNotifier>(
        () => _i9.SignInNotifier(get<_i6.TypedLink>(), get<_i7.AuthNotifier>()),
        registerFor: {_web, _nonWeb});
    return this;
  }
}

class _$RegisterModule extends _i10.RegisterModule {}
