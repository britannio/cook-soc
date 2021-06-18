import 'package:cooksoc/features/auth/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_union.freezed.dart';

@freezed
class AuthUnion with _$AuthUnion {
  const factory AuthUnion.loading() = _Loading;
  const factory AuthUnion.unauthenticated() = _Unauthenticated;
  const factory AuthUnion.authenticated({required User user}) = _Authenticated;
}
