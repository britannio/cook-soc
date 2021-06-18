import 'package:cooksoc/features/auth/models/auth_union.dart';
import 'package:cooksoc/features/auth/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({required AuthUnion authUnion, required User? user}) =
      _AuthState;

  factory AuthState.initial() => AuthState(
        authUnion: AuthUnion.loading(),
        user: null,
      );
}
